# Monthly settlement ("Mesec") — design

## Goal
A landlord does the whole monthly cost routine on the phone: meter
readings, bill totals, review, publish (which pushes to tenants). No PDF,
manual split editing, OCR or trends — those stay on the web.

## Placement
New landlord tab **Mesec** replaces the read-only Properties tab.
One screen per property + month; property picker (hidden with one
property), month switcher defaulting to **last month** (bills arrive after
the month ends).

## Steps (segmented bar with empty/partial/done status)
1. **Števci** — a card per metered utility used by the property: main
   meter reading (previous reading + usage badge, warning when last
   month's reading is missing, with a jump to that month), then one row per
   unit (unit · tenant, reading, usage). Fields save on commit.
2. **Računi** — a card per cost category the property's leases have rules
   for: total bill €. Metered utilities show usage from step 1 read-only;
   non-metered consumption costs get total usage + per-tenant usage.
3. **Pregled** — a card per tenant: costs as the server calculates them,
   carried over/underpayment, "Za plačilo", Objavljeno/Osnutek badge;
   manual-rule costs as an amount field.
Sticky bottom button: Naprej / Objavi mesec.

## Data flow (approach A — server calculates per lease)
- Read: `meters:listForProperty` (previous month … month) for meter
  categories, leases, readings; `charges:leaseYearOverview` per active
  lease for rules, bills, amounts, carry-over and publish state.
- Reading commit → `meters:upsertReading`.
- Bill commit → `utilities:upsertBill` (keeps the bill's existing
  totalUsage for metered utilities; entered usage otherwise).
- Entering Pregled → `meters:applyToBilling` for every metered utility
  whose usage can be computed, then `utilities:generateForLeaseMonth`
  (publish: false) for every lease, then reload.
- Publish → per lease still in draft: `generateForLeaseMonth`
  (publish: true) + `utilities:publishLeaseMonth`. Newly visible costs
  trigger the tenant push server-side.
- **Entries are always complete**: consumption rules always carry
  tenantUsage (meter usage, typed value, or the stored one) and manual
  rules always carry an amount — the server deletes a charge whose
  consumption/manual entry is missing.

## Errors
Missing previous reading: warning + jump, usage not computed. Failed
calls: snackbar with the error, fields keep their values. Publishing is
per lease; a failure on one reports it and leaves the others published.

## Testing
Pure logic (usage deltas, step status, entry building) unit-tested; bloc
tests for commit/compute/publish order; phone-width layout tests; manual
run on the iPhone against a real property.
