import 'package:flutter/material.dart';
import 'package:rentlog/core/config/env.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/widgets/rl_card.dart';
import 'package:rentlog/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openWeb([String path = '/']) =>
    launchUrl(Uri.parse('${Env.webUrl}$path'), mode: LaunchMode.externalApplication);

/// Points at the web app for anything the companion app leaves out.
class OpenOnWebTile extends StatelessWidget {
  const OpenOnWebTile({this.path = '/', super.key});

  final String path;

  @override
  Widget build(BuildContext context) => RlCard(
    onTap: () => openWeb(path),
    child: Row(
      children: [
        const Icon(Icons.open_in_new, size: 20, color: AppColors.primary),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.openOnWeb,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 2),
              Text(
                context.l10n.openOnWebHint,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
