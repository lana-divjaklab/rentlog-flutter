# RentLOG mobile

Companion app for [RentLOG](https://rent-log.app) on iOS and Android
(`app.rentlog`). It talks to the same Convex backend as the web app, and
uses the same Clerk accounts.

- **Tenants**:
  - see their monthly rent and costs, including overpayments carried to
    the next month, plus meter readings and shared documents;
  - get a push when the landlord publishes a month's costs, and on the day
    rent is due (and 3 days after) if it isn't marked paid.
- **Landlords**:
  - see an overview of what's collected and overdue;
  - browse leases and properties;
  - on a lease's month: mark rent and costs paid (with the amount actually
    transferred), enter costs, and publish the month.
  - Everything else links to the web app.
- **Everyone**:
  - dark theme only;
  - Slovenian or English, following the phone until changed in Settings;
  - in-app account deletion.

## Run

```bash
flutter pub get
flutter run
```

The defaults in `lib/core/config/env.dart` point at production, so plain
`flutter run` (or Run in Xcode or an IDE) needs nothing else. To point at a
dev deployment, copy `config/development.example.json` to
`config/development.json` (gitignored), fill it in, and run with
`--dart-define-from-file=config/development.json`.

After changing a freezed/json model, regenerate with
`dart run build_runner build`.

## Configuration (`config/<flavor>.json`, overriding the defaults in `env.dart`)

Every value here is public. These are the same identifiers the web app ships
to every browser. No secret belongs in the app.

| Key | What |
|---|---|
| `CONVEX_URL` | Convex deployment URL |
| `CLERK_FRONTEND_API` | Clerk Frontend API, e.g. `https://clerk.rent-log.app` |
| `WEB_URL` | Web app, for "Open on web" links |
| `FIREBASE_*` | Firebase client options, from the Firebase console's app settings. **Empty means push is off.** The rest of the app still works. |

## Push notifications setup

1. **Firebase:**
   - Create a Firebase project.
   - Add an iOS app and an Android app, both `app.rentlog`.
   - Copy their API key, app ID, sender ID and project ID into the
     `FIREBASE_*` keys.
2. **APNs:** upload an APNs auth key (Apple Developer → Keys) under
   Firebase → Project settings → Cloud Messaging.
3. **Convex:**
   - Create a service-account key (Firebase → Project settings → Service
     accounts).
   - Paste the whole JSON into the Convex environment variable
     `FIREBASE_SERVICE_ACCOUNT_JSON`.
   - Until then, `convex/pushActions.ts` logs and skips.
4. **Xcode:** enable the Push Notifications capability for your team. The
   entitlement file already exists (`ios/Runner/Runner.entitlements`).

## Clerk

Sign-in uses Clerk's Frontend API in native mode (`core/auth/clerk_api.dart`),
because there's no stable Clerk Flutter SDK.

- **Sign-in:** email code.
- **Sign-up:** first and last name, password and terms consent, then an
  email code. This matches what the Clerk instance requires.
- **Needed in Clerk:**
  - The **Native API** must be enabled (Configure → Native applications).
  - The `convex` JWT template, already used by the web app.
- **Bot protection:** if it blocks native sign-ups, the app says so and
  points people to the web.

## Layout

```
lib/
  app/          router, shells, app widget
  core/         config, Convex client, Clerk auth, push, theme, formatting, shared widgets
  features/     auth · onboarding · session · tenant · landlord · settings
                each: data/ (repository + freezed models), bloc/, view/
  l10n/arb/     app_en.arb (template), app_sl.arb
tool/
  gen_branding.dart   renders the icon and splash images from the logo geometry
```

- **State:** `flutter_bloc`, with events and states as `freezed` unions.
- **Screen data:** screens that only show one query use the generic
  `LoaderBloc<T>`.
- **Refreshing:** there's no live subscription as on the web. Screens
  refresh on pull-to-refresh, on resume, and when a push arrives.

## Branding

```bash
flutter test tool/gen_branding.dart
dart run flutter_launcher_icons
dart run flutter_native_splash:create
```

The geometry matches `public/favicon.svg` in the web repo. Keep them in sync.

## Checks

```bash
flutter analyze
flutter test
```
