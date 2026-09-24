import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentlog/app/routes.dart';
import 'package:rentlog/core/bloc/loader_bloc.dart';
import 'package:rentlog/core/bloc/refresh.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/money_text.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/rl_logo.dart';
import 'package:rentlog/core/widgets/status_badge.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/l10n/l10n.dart';

class LandlordOverviewScreen extends StatelessWidget {
  const LandlordOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<LoaderBloc<DashboardOverview>>();
    return Scaffold(
      appBar: AppBar(title: const RlLogo(size: 26)),
      body: LoadStateView(
        state: bloc.state,
        onRefresh: () => refreshAndWait(bloc, const LoaderEvent.refreshed()),
        builder: (context, data) => _Overview(data: data),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({required this.data});

  final DashboardOverview data;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final money = data.money;
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        Text(
          monthLabelLong(data.month, locale),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _Kpi(
                label: l10n.dashRentThisMonth,
                cents: money.rentCollectedThisMonthCents,
                hint: l10n.dashExpectedRent(
                  formatMoney(money.expectedMonthlyRentCents, locale),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _Kpi(
                label: l10n.dashUtilitiesThisMonth,
                cents: money.utilitiesCollectedThisMonthCents,
                hint: l10n.dashCollectedYear('${data.year}'),
                hintCents:
                    money.rentCollectedYearCents + money.utilitiesCollectedYearCents,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        _Kpi(
          label: l10n.dashOverdue,
          cents: money.overdueAmountCents,
          hint: l10n.dashOverdueCount(money.overdueCount),
          color: money.overdueAmountCents > 0 ? AppColors.destructive : null,
        ),
        const SizedBox(height: 24),
        Text(l10n.dashNeedsAttention, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        if (data.attention.isEmpty)
          RlCard(
            child: Row(
              children: [
                const Icon(Icons.check_circle_outline, color: AppColors.success),
                const SizedBox(width: 12),
                Expanded(child: Text(l10n.dashAllClear)),
              ],
            ),
          )
        else
          for (final item in data.attention) ...[
            _AttentionTile(item: item),
            const SizedBox(height: 8),
          ],
        const SizedBox(height: 24),
        Text(l10n.navLeases, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        for (final lease in data.leases) ...[
          RlCard(
            onTap: () => context.push(AppRoutes.leaseDetail(lease.leaseId)),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lease.tenantName,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '${lease.propertyName} · ${lease.unitName}',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MoneyText(
                      lease.rentAmountCents,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      lease.overdueAmountCents > 0
                          ? l10n.dashLeaseOverdue(
                              formatMoney(lease.overdueAmountCents, locale),
                            )
                          : l10n.dashLeaseOk,
                      style: TextStyle(
                        fontSize: 12,
                        color: lease.overdueAmountCents > 0
                            ? AppColors.destructive
                            : AppColors.success,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ],
    );
  }
}

class _Kpi extends StatelessWidget {
  const _Kpi({
    required this.label,
    required this.cents,
    required this.hint,
    this.hintCents,
    this.color,
  });

  final String label;
  final int cents;
  final String hint;
  final int? hintCents;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    return RlCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 6),
          MoneyText(
            cents,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: color ?? AppColors.foreground,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            hintCents == null ? hint : '$hint: ${formatMoney(hintCents!, locale)}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _AttentionTile extends StatelessWidget {
  const _AttentionTile({required this.item});

  final AttentionItem item;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    return RlCard(
      onTap: () => context.push(AppRoutes.leaseDetail(item.leaseId)),
      child: Row(
        children: [
          Icon(
            item.type == ChargeType.rent ? Icons.home_outlined : Icons.bolt_outlined,
            color: item.status == ChargeStatus.overdue
                ? AppColors.destructive
                : AppColors.warning,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.tenantName, style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(
                  '${item.description} · ${l10n.dueOn(formatDate(item.dueDate, locale))}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MoneyText(item.amountCents, style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              StatusBadge(item.status),
            ],
          ),
        ],
      ),
    );
  }
}
