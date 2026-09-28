import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:rentlog/app/router.dart';
import 'package:rentlog/app/routes.dart';
import 'package:rentlog/core/locale/locale_cubit.dart';
import 'package:rentlog/core/push/push_service.dart';
import 'package:rentlog/core/theme/app_theme.dart';
import 'package:rentlog/features/auth/data/auth_repository.dart';
import 'package:rentlog/features/landlord/data/landlord_repository.dart';
import 'package:rentlog/features/session/bloc/session_bloc.dart';
import 'package:rentlog/features/session/data/session_repository.dart';
import 'package:rentlog/features/settlement/data/settlement_repository.dart';
import 'package:rentlog/features/tenant/data/tenant_repository.dart';
import 'package:rentlog/l10n/l10n.dart';

/// Everything built once at startup and shared app-wide.
class AppDependencies {
  const AppDependencies({
    required this.auth,
    required this.session,
    required this.tenant,
    required this.landlord,
    required this.settlement,
    required this.push,
    required this.localeCubit,
    required this.sessionBloc,
  });

  final AuthRepository auth;
  final SessionRepository session;
  final TenantRepository tenant;
  final LandlordRepository landlord;
  final SettlementRepository settlement;
  final PushService push;
  final LocaleCubit localeCubit;
  final SessionBloc sessionBloc;
}

class RentLogApp extends StatelessWidget {
  const RentLogApp({required this.deps, super.key});

  final AppDependencies deps;

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
    providers: [
      RepositoryProvider.value(value: deps.auth),
      RepositoryProvider.value(value: deps.session),
      RepositoryProvider.value(value: deps.tenant),
      RepositoryProvider.value(value: deps.landlord),
      RepositoryProvider.value(value: deps.settlement),
      RepositoryProvider.value(value: deps.push),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider.value(value: deps.localeCubit),
        BlocProvider.value(value: deps.sessionBloc),
      ],
      child: const _AppView(),
    ),
  );
}

class _AppView extends StatefulWidget {
  const _AppView();

  @override
  State<_AppView> createState() => _AppViewState();
}

class _AppViewState extends State<_AppView> {
  late final GoRouter _router = buildRouter(context.read<SessionBloc>());
  StreamSubscription<PushMessage>? _openedSub;

  @override
  void initState() {
    super.initState();
    _openedSub = context.read<PushService>().opened.listen(_onPushOpened);
  }

  /// Both kinds of push are about the tenant's own charges, so they open
  /// the tenant view — switching to it for someone who is both.
  Future<void> _onPushOpened(PushMessage message) async {
    final session = context.read<SessionBloc>();
    final state = session.state is SessionReady
        ? session.state as SessionReady
        : await session.stream.whereType<SessionReady>().first;
    if (state.role != AppRole.tenant) {
      if (!state.canSwitchRole) return;
      session.add(const SessionEvent.roleSwitched(AppRole.tenant));
      await session.stream.firstWhere(
        (s) => s is SessionReady && s.role == AppRole.tenant,
      );
    }
    final month = message.periodMonth;
    _router.go(month == null ? AppRoutes.tenantHome : AppRoutes.tenantMonth(month));
  }

  @override
  void dispose() {
    unawaited(_openedSub?.cancel());
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final language = context.select<LocaleCubit, String>(
      (cubit) => LocaleCubit.resolve(cubit.state),
    );
    return MaterialApp.router(
      title: 'RentLOG',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      locale: Locale(language),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: _router,
    );
  }
}

extension<T> on Stream<T> {
  Stream<S> whereType<S>() => where((e) => e is S).cast<S>();
}
