import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rentlog/app/app.dart';
import 'package:rentlog/core/auth/clerk_api.dart';
import 'package:rentlog/core/auth/session_store.dart';
import 'package:rentlog/core/config/env.dart';
import 'package:rentlog/core/convex/convex_client.dart';
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
import 'package:shared_preferences/shared_preferences.dart';

/// Builds the object graph by hand — small enough not to need a DI package.
Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  Env.assertConfigured();
  SystemChrome.setSystemUIOverlayStyle(AppTheme.systemOverlay);
  await initializeDateFormatting();

  final prefs = await SharedPreferences.getInstance();
  final localeCubit = LocaleCubit(prefs);

  final auth = AuthRepository(
    clerk: ClerkApi(frontendApi: Env.clerkFrontendApi, store: SessionStore()),
  );
  final convex = ConvexClient(deploymentUrl: Env.convexUrl, tokens: auth);
  final session = SessionRepository(convex);

  final push = PushService(prefs: prefs);
  final strings = lookupAppLocalizations(Locale(localeCubit.languageCode));
  await push.initialize(
    channelName: strings.notificationChannelName,
    channelDescription: strings.notificationChannelDescription,
  );

  final sessionBloc = SessionBloc(
    auth: auth,
    session: session,
    push: push,
    prefs: prefs,
    currentLanguage: () => localeCubit.languageCode,
  )..add(const SessionEvent.started());

  runApp(
    RentLogApp(
      deps: AppDependencies(
        auth: auth,
        session: session,
        tenant: TenantRepository(convex),
        landlord: LandlordRepository(convex),
        settlement: SettlementRepository(convex),
        push: push,
        localeCubit: localeCubit,
        sessionBloc: sessionBloc,
      ),
    ),
  );
}
