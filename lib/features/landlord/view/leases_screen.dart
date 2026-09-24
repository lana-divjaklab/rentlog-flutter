import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rentlog/app/routes.dart';
import 'package:rentlog/core/bloc/loader_bloc.dart';
import 'package:rentlog/core/bloc/refresh.dart';
import 'package:rentlog/core/format/money.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/money_text.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/core/widgets/status_badge.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/l10n/l10n.dart';

class LeasesScreen extends StatelessWidget {
  const LeasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<LoaderBloc<List<LeaseSummary>>>();
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.navLeases)),
      body: LoadStateView(
        state: bloc.state,
        onRefresh: () => refreshAndWait(bloc, const LoaderEvent.refreshed()),
        builder: (context, leases) {
          if (leases.isEmpty) {
            return EmptyState(
              icon: Icons.description_outlined,
              message: context.l10n.leasesEmpty,
            );
          }
          // Active first, then drafts, then ended — the ones you act on on top.
          final sorted = [...leases]
            ..sort((a, b) {
              final byStatus = _rank(a.status).compareTo(_rank(b.status));
              return byStatus != 0 ? byStatus : a.tenantName.compareTo(b.tenantName);
            });
          return ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            itemCount: sorted.length,
            separatorBuilder: (_, _) => const SizedBox(height: 10),
            itemBuilder: (context, i) => _LeaseTile(lease: sorted[i]),
          );
        },
      ),
    );
  }

  static int _rank(LeaseStatus status) => switch (status) {
    LeaseStatus.active => 0,
    LeaseStatus.draft => 1,
    LeaseStatus.ended => 2,
  };
}

class _LeaseTile extends StatelessWidget {
  const _LeaseTile({required this.lease});

  final LeaseSummary lease;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).languageCode;
    final (statusLabel, statusColor) = switch (lease.status) {
      LeaseStatus.active => (l10n.leaseStatusActive, AppColors.success),
      LeaseStatus.draft => (l10n.leaseStatusDraft, AppColors.muted),
      LeaseStatus.ended => (l10n.leaseStatusEnded, AppColors.muted),
    };
    return RlCard(
      onTap: () => context.push(AppRoutes.leaseDetail(lease.id)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      lease.tenantName,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    RlBadge(label: statusLabel, color: statusColor),
                  ],
                ),
                const SizedBox(height: 2),
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
              if (lease.unpaidTotalCents > 0)
                Text(
                  l10n.unpaidTotal(formatMoney(lease.unpaidTotalCents, locale)),
                  style: TextStyle(
                    fontSize: 12,
                    color: lease.overdueCount > 0
                        ? AppColors.destructive
                        : AppColors.warning,
                  ),
                ),
            ],
          ),
          const SizedBox(width: 4),
          const Icon(Icons.chevron_right, color: AppColors.muted),
        ],
      ),
    );
  }
}
