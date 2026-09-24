import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentlog/core/widgets/error_text.dart';
import 'package:rentlog/core/widgets/load_state_view.dart';
import 'package:rentlog/core/widgets/rl_logo.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';

/// Shown while the session is restored, or when that failed (offline).
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SessionBloc>().state;
    return Scaffold(
      body: switch (state) {
        SessionUnavailable(:final error) => ErrorState(
          message: describeError(context, error),
          onRetry: () => context.read<SessionBloc>().add(const SessionEvent.started()),
        ),
        _ => const Center(child: RlLogo(size: 56, showWordmark: false)),
      },
    );
  }
}
