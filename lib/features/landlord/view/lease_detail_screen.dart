import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/bloc/loader_bloc.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/error_text.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/open_on_web_tile.dart';
import 'package:rentlog/features/landlord/bloc/lease_detail_bloc.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/landlord/view/widgets/lease_month_card.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/l10n/l10n.dart';

class LeaseDetailScreen extends StatelessWidget {
  const LeaseDetailScreen({required this.leaseId, super.key});

  final String leaseId;

  @override
  Widget build(BuildContext context) {
    final session = context.read<SessionBloc>().state as SessionReady;
    return BlocProvider(
      create: (context) => LeaseDetailBloc(
        repository: context.read<LandlordRepository>(),
        organizationId: session.landlordOrg!.organizationId,
        leaseId: leaseId,
      )..add(const LeaseDetailEvent.started()),
      child: _LeaseDetailView(leaseId: leaseId),
    );
  }
}

class _LeaseDetailView extends StatelessWidget {
  const _LeaseDetailView({required this.leaseId});

  final String leaseId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final lease = context
        .watch<LoaderBloc<List<LeaseSummary>>>()
        .state
        .dataOrNull
        ?.where((l) => l.id == leaseId)
        .firstOrNull;

    return BlocListener<LeaseDetailBloc, LeaseDetailState>(
      listenWhen: (a, b) => a.signal != b.signal,
      listener: (context, state) {
        final message = state.error != null
            ? describeError(context, state.error!)
            : switch (state.notice) {
                LeaseDetailNotice.costsSaved => l10n.costsSaved,
                LeaseDetailNotice.monthPublished => l10n.monthPublished,
                null => null,
              };
        if (message == null) return;
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(message)));
        // Lists and the overview show totals this action just changed.
        context.read<LoaderBloc<List<LeaseSummary>>>().add(const LoaderEvent.refreshed());
        context.read<LoaderBloc<DashboardOverview>>().add(const LoaderEvent.refreshed());
      },
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(lease?.tenantName ?? ''),
              if (lease != null)
                Text(
                  '${lease.propertyName} · ${lease.unitName}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
            ],
          ),
        ),
        body: BlocBuilder<LeaseDetailBloc, LeaseDetailState>(
          builder: (context, state) {
            final bloc = context.read<LeaseDetailBloc>();
            return Column(
              children: [
                _YearSwitcher(
                  year: state.year,
                  onChanged: (year) => bloc.add(LeaseDetailEvent.yearChanged(year)),
                ),
                Expanded(
                  child: LoadStateView(
                    state: state.data,
                    onRefresh: () async {
                      bloc.add(const LeaseDetailEvent.refreshed());
                      await bloc.stream.firstWhere(
                        (s) => s.data is! LoadSuccess<LeaseYear> ||
                            !(s.data as LoadSuccess<LeaseYear>).refreshing,
                      );
                    },
                    builder: (context, data) => _Months(
                      year: state.year,
                      data: data,
                      busyMonth: state.busyMonth,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Months extends StatelessWidget {
  const _Months({required this.year, required this.data, this.busyMonth});

  final int year;
  final LeaseYear data;
  final String? busyMonth;

  @override
  Widget build(BuildContext context) {
    // Newest first, and nothing further ahead than next month: rent is
    // sometimes paid in advance, costs never are.
    final horizon = _nextMonth(currentMonthKey());
    final months = data.months.where((m) => m.month.compareTo(horizon) <= 0).toList()
      ..sort((a, b) => b.month.compareTo(a.month));

    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
      children: [
        if (months.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Text(
              context.l10n.noCharges,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.muted),
            ),
          ),
        for (final month in months) ...[
          LeaseMonthCard(
            key: ValueKey(month.month),
            month: month,
            busy: busyMonth == month.month,
          ),
          const SizedBox(height: 12),
        ],
        const OpenOnWebTile(path: '/leases'),
      ],
    );
  }

  static String _nextMonth(String month) {
    final parts = month.split('-').map(int.parse).toList();
    final next = DateTime(parts[0], parts[1] + 1);
    return '${next.year}-${next.month.toString().padLeft(2, '0')}';
  }
}

class _YearSwitcher extends StatelessWidget {
  const _YearSwitcher({required this.year, required this.onChanged});

  final int year;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final thisYear = DateTime.now().year;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => onChanged(year - 1),
          ),
          Text('$year', style: Theme.of(context).textTheme.titleMedium),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: year >= thisYear ? null : () => onChanged(year + 1),
          ),
        ],
      ),
    );
  }
}
