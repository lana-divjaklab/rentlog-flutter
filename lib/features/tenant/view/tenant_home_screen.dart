import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentlog/app/routes.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/bloc/refresh.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/money_text.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/rl_logo.dart';
import 'package:rentlog/features/tenant/bloc/tenant_bloc.dart';
import 'package:rentlog/features/tenant/data/tenant_models.dart';
import 'package:rentlog/features/tenant/view/widgets/tenant_month_card.dart';
import 'package:rentlog/l10n/l10n.dart';

class TenantHomeScreen extends StatelessWidget {
  const TenantHomeScreen({this.focusMonth, super.key});

  /// Month to open and scroll to, when arriving from a notification.
  final String? focusMonth;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<TenantBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const RlLogo(size: 26),
        actions: [
          if (bloc.state.dataOrNull?.hasSeveralLeases ?? false)
            IconButton(
              tooltip: context.l10n.chooseLease,
              icon: const Icon(Icons.swap_horiz),
              onPressed: () => _pickLease(context, bloc.state.dataOrNull!),
            ),
        ],
      ),
      body: LoadStateView(
        state: bloc.state,
        onRefresh: () => refreshAndWait(bloc, const TenantEvent.refreshed()),
        builder: (context, data) {
          final overview = data.overview;
          if (overview == null) return const _NoLease();
          return _Overview(
            data: data,
            overview: overview,
            focusMonth: focusMonth,
          );
        },
      ),
    );
  }

  Future<void> _pickLease(BuildContext context, TenantData data) async {
    final bloc = context.read<TenantBloc>();
    final picked = await showModalBottomSheet<String>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Text(
                context.l10n.chooseLease,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            for (final lease in data.leases)
              ListTile(
                title: Text('${lease.propertyName} · ${lease.unitName}'),
                subtitle: Text(lease.tenantName),
                trailing: lease.leaseId == data.overview?.leaseId
                    ? const Icon(Icons.check, color: AppColors.primary)
                    : null,
                onTap: () => Navigator.pop(context, lease.leaseId),
              ),
          ],
        ),
      ),
    );
    if (picked != null) bloc.add(TenantEvent.leaseSelected(picked));
  }
}

class _Overview extends StatelessWidget {
  const _Overview({
    required this.data,
    required this.overview,
    this.focusMonth,
  });

  final TenantData data;
  final TenantOverview overview;
  final String? focusMonth;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final meters = data.meters;
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        _LeaseHeader(overview: overview),
        const SizedBox(height: 24),
        Text(l10n.history, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        if (overview.months.isEmpty)
          Text(l10n.noCharges, style: const TextStyle(color: AppColors.muted)),
        for (final month in overview.months) ...[
          TenantMonthCard(
            key: ValueKey(month.month),
            month: month,
            utilityDueOffsetMonths: overview.utilityDueOffsetMonths,
            utilityDueDay: overview.utilityDueDay,
            highlighted: month.month == focusMonth,
          ),
          const SizedBox(height: 12),
        ],
        if (meters != null && meters.readings.isNotEmpty) ...[
          const SizedBox(height: 12),
          _MetersSection(meters: meters),
        ],
      ],
    );
  }
}

class _LeaseHeader extends StatelessWidget {
  const _LeaseHeader({required this.overview});

  final TenantOverview overview;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final deposit = overview.depositAmountCents;
    return RlCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(overview.tenantName, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _Figure(
                  label: l10n.monthlyRent,
                  child: MoneyText(
                    overview.rentAmountCents,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              if (deposit != null)
                Expanded(
                  child: _Figure(
                    label: l10n.deposit,
                    child: MoneyText(
                      deposit,
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Figure extends StatelessWidget {
  const _Figure({required this.label, required this.child});

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: Theme.of(context).textTheme.bodySmall),
      const SizedBox(height: 4),
      child,
    ],
  );
}

class _MetersSection extends StatelessWidget {
  const _MetersSection({required this.meters});

  final TenantMeters meters;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(l10n.meters, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        for (final category in meters.categories)
          if (meters.readings.any((r) => r.categoryId == category.id)) ...[
            RlCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(category.name, style: const TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  for (final reading in (meters.readings
                        .where((r) => r.categoryId == category.id)
                        .toList()
                    ..sort((a, b) => b.consumptionMonth.compareTo(a.consumptionMonth)))
                      .take(6))
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              monthLabelLong(reading.consumptionMonth, locale),
                              style: const TextStyle(color: AppColors.muted),
                            ),
                          ),
                          Text(
                            '${formatUsage(reading.reading, locale)} ${category.unit}',
                          ),
                          if (reading.calculatedUsage != null) ...[
                            const SizedBox(width: 12),
                            Text(
                              '+${formatUsage(reading.calculatedUsage!, locale)}',
                              style: const TextStyle(color: AppColors.primary),
                            ),
                          ],
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ],
      ],
    );
  }
}

class _NoLease extends StatelessWidget {
  const _NoLease();

  @override
  Widget build(BuildContext context) => EmptyState(
    icon: Icons.vpn_key_outlined,
    message: context.l10n.noLease,
    action: OutlinedButton(
      onPressed: () => context.push(AppRoutes.join),
      child: Text(context.l10n.enterInviteCode),
    ),
  );
}
