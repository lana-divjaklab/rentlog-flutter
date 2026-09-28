import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/widgets/error_text.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/rl_logo.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/l10n/l10n.dart';

/// Shown while the session is restored, or when that failed (offline).
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SessionBloc>().state;
    return Scaffold(
      body: switch (state) {
        SessionUnavailable(:final error) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ErrorState(
              message: describeError(context, error),
              detail: errorDetail(error),
              onRetry: () =>
                  context.read<SessionBloc>().add(const SessionEvent.started()),
            ),
            // Never a dead end: whatever broke, you can always start over.
            TextButton(
              onPressed: () => context.read<SessionBloc>().add(
                const SessionEvent.signOutRequested(),
              ),
              child: Text(context.l10n.signOut),
            ),
          ],
        ),
        _ => const Center(child: RlLogo(size: 56, showWordmark: false)),
      },
    );
  }
}
