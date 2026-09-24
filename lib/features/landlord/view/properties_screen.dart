import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/bloc/loader_bloc.dart';
import 'package:rentlog/core/bloc/refresh.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/open_on_web_tile.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/l10n/l10n.dart';

/// Read-only: properties and units are set up once, on the web.
class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<LoaderBloc<List<PropertyItem>>>();
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.navProperties)),
      body: LoadStateView(
        state: bloc.state,
        onRefresh: () => refreshAndWait(bloc, const LoaderEvent.refreshed()),
        builder: (context, properties) {
          if (properties.isEmpty) {
            return EmptyState(
              icon: Icons.home_work_outlined,
              message: context.l10n.propertiesEmpty,
              action: OutlinedButton(
                onPressed: () => openWeb('/properties'),
                child: Text(context.l10n.openOnWeb),
              ),
            );
          }
          return ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            children: [
              for (final property in properties) ...[
                _PropertyCard(property: property),
                const SizedBox(height: 12),
              ],
              const OpenOnWebTile(path: '/properties'),
            ],
          );
        },
      ),
    );
  }
}

class _PropertyCard extends StatelessWidget {
  const _PropertyCard({required this.property});

  final PropertyItem property;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return RlCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(property.name, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
          const SizedBox(height: 2),
          Text(property.address, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 12),
          Text(
            l10n.unitsCount(property.units.length),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          for (final unit in property.units)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  const Icon(Icons.door_front_door_outlined, size: 18, color: AppColors.muted),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      [unit.name, if (unit.floor?.isNotEmpty ?? false) unit.floor!].join(' · '),
                    ),
                  ),
                  if (unit.isOwnerOccupied ?? false)
                    Text(
                      l10n.ownerOccupied,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
