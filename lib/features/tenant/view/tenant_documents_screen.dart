import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/bloc/refresh.dart';
import 'package:rentlog/core/format/dates.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/error_text.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/features/tenant/bloc/tenant_bloc.dart';
import 'package:rentlog/features/tenant/data/tenant_models.dart';
import 'package:rentlog/features/tenant/data/tenant_repository.dart';
import 'package:rentlog/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class TenantDocumentsScreen extends StatelessWidget {
  const TenantDocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<TenantBloc>();
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.navDocuments)),
      body: LoadStateView(
        state: bloc.state,
        onRefresh: () => refreshAndWait(bloc, const TenantEvent.refreshed()),
        builder: (context, data) {
          if (data.documents.isEmpty) {
            return EmptyState(
              icon: Icons.description_outlined,
              message: context.l10n.documentsEmpty,
            );
          }
          return ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            itemCount: data.documents.length,
            separatorBuilder: (_, _) => const SizedBox(height: 10),
            itemBuilder: (context, i) => _DocumentTile(document: data.documents[i]),
          );
        },
      ),
    );
  }
}

class _DocumentTile extends StatefulWidget {
  const _DocumentTile({required this.document});

  final TenantDocument document;

  @override
  State<_DocumentTile> createState() => _DocumentTileState();
}

class _DocumentTileState extends State<_DocumentTile> {
  bool _opening = false;

  Future<void> _open() async {
    final messenger = ScaffoldMessenger.of(context);
    final l10n = context.l10n;
    setState(() => _opening = true);
    try {
      // Storage URLs are signed and short-lived, so fetch one per tap.
      final url = await context.read<TenantRepository>().documentUrl(
        widget.document.id,
      );
      if (url == null) {
        messenger.showSnackBar(SnackBar(content: Text(l10n.documentUnavailable)));
        return;
      }
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } on Object catch (error) {
      if (!mounted) return;
      messenger.showSnackBar(SnackBar(content: Text(describeError(context, error))));
    } finally {
      if (mounted) setState(() => _opening = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final created = DateTime.fromMillisecondsSinceEpoch(widget.document.createdAt);
    return RlCard(
      onTap: _opening ? null : _open,
      child: Row(
        children: [
          Icon(
            widget.document.utilityBillEntryId != null
                ? Icons.receipt_long_outlined
                : Icons.description_outlined,
            color: AppColors.primary,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.document.title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  formatDate(toIsoDate(created), locale),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          if (_opening)
            const SizedBox.square(
              dimension: 18,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          else
            const Icon(Icons.open_in_new, size: 18, color: AppColors.muted),
        ],
      ),
    );
  }
}
