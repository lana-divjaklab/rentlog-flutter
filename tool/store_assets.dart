// Renders the Google Play listing assets from the real app screens, filled
// with sample data (no real accounts involved):
//
//   store/google-play/icon-512.png             512×512
//   store/google-play/feature-graphic.jpg      1024×500
//   store/google-play/screenshot-N-*.jpg       1080×1920
//
// Run:  FLUTTER_ROOT=<flutter sdk> flutter test tool/store_assets.dart
import 'dart:io';
import 'dart:ui' as ui;

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rentlog/core/bloc/load_state.dart';
import 'package:rentlog/core/bloc/loader_bloc.dart';
import 'package:rentlog/core/models/charge_breakdown.dart';
import 'package:rentlog/core/models/enums.dart';
import 'package:rentlog/core/theme/app_colors.dart';
import 'package:rentlog/core/theme/app_theme.dart';
import 'package:rentlog/features/landlord/data/landlord_models.dart';
import 'package:rentlog/features/landlord/view/landlord_overview_screen.dart';
import 'package:rentlog/features/settlement/bloc/settlement_bloc.dart';
import 'package:rentlog/features/settlement/data/settlement_models.dart';
import 'package:rentlog/features/settlement/domain/settlement_logic.dart';
import 'package:rentlog/features/settlement/view/settlement_screen.dart';
import 'package:rentlog/features/tenant/bloc/tenant_bloc.dart';
import 'package:rentlog/features/tenant/data/tenant_models.dart';
import 'package:rentlog/features/tenant/view/tenant_home_screen.dart';
import 'package:rentlog/l10n/l10n.dart';

const _out = 'store/google-play';

class _MockTenantBloc extends MockBloc<TenantEvent, LoadState<TenantData>>
    implements TenantBloc;

class _MockOverviewBloc extends MockBloc<LoaderEvent, LoadState<DashboardOverview>>
    implements LoaderBloc<DashboardOverview>;

class _MockSettlementBloc extends MockBloc<SettlementEvent, SettlementState>
    implements SettlementBloc;

// --- Fonts ------------------------------------------------------------------

Future<void> _loadFonts() async {
  final root = Platform.environment['FLUTTER_ROOT'];
  if (root == null) throw StateError('Set FLUTTER_ROOT to the Flutter SDK.');
  final dir = '$root/bin/cache/artifacts/material_fonts';
  ByteData font(String file) =>
      ByteData.sublistView(File('$dir/$file').readAsBytesSync());
  final roboto = FontLoader('Roboto');
  for (final f in ['Regular', 'Medium', 'Bold', 'Black']) {
    roboto.addFont(Future.value(font('Roboto-$f.ttf')));
  }
  await roboto.load();
  await (FontLoader('MaterialIcons')
        ..addFont(Future.value(font('MaterialIcons-Regular.otf'))))
      .load();
}

// --- Rendering --------------------------------------------------------------

Future<void> _capture(
  WidgetTester tester,
  Widget child, {
  required Size size,
  required double pixelRatio,
  required String file,
}) async {
  tester.view
    ..physicalSize = size * pixelRatio
    ..devicePixelRatio = pixelRatio;
  final key = GlobalKey();
  await tester.pumpWidget(RepaintBoundary(key: key, child: child));
  // Let SVG logos decode, then settle layout.
  for (var i = 0; i < 4; i++) {
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 150)));
    await tester.pump(const Duration(milliseconds: 100));
  }
  await tester.runAsync(() async {
    final boundary = key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    final image = await boundary.toImage(pixelRatio: pixelRatio);
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
    final png = '$_out/${file.replaceAll('.jpg', '.png')}';
    await File(png).writeAsBytes(bytes!.buffer.asUint8List());
    // Play wants the feature graphic and screenshots without transparency.
    final result = await Process.run('sips', [
      '-s', 'format', 'jpeg', '-s', 'formatOptions', '95', png, '--out', '$_out/$file',
    ]);
    expect(result.exitCode, 0, reason: '${result.stderr}');
    await File(png).delete();
  });
}

Widget _app(Widget home) => MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: AppTheme.dark.copyWith(
    textTheme: AppTheme.dark.textTheme.apply(fontFamily: 'Roboto'),
  ),
  locale: const Locale('en'),
  supportedLocales: AppLocalizations.supportedLocales,
  localizationsDelegates: const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  home: home,
);

// --- Marketing chrome -------------------------------------------------------

const _bgTop = Color(0xFF0B1119);
const _bgBottom = Color(0xFF12202B);

class _Backdrop extends StatelessWidget {
  const _Backdrop({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [_bgTop, _bgBottom],
      ),
    ),
    child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(0, -1.1),
          radius: 1.1,
          colors: [AppColors.primary.withValues(alpha: 0.18), Colors.transparent],
        ),
      ),
      // Text needs a Material above it, or Flutter marks it with debug
      // underlines.
      child: Material(type: MaterialType.transparency, child: child),
    ),
  );
}

/// The RentLOG mark, same geometry as public/favicon.svg.
class _MarkPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final unit = size.width / 100;
    canvas.scale(unit);
    final shader = ui.Gradient.linear(
      const Offset(0, 17),
      const Offset(0, 88),
      const [AppColors.primary, AppColors.primaryLight],
    );
    Paint stroke(double w) => Paint()
      ..shader = shader
      ..style = PaintingStyle.stroke
      ..strokeWidth = w
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas
      ..drawPath(Path()..moveTo(18, 41)..lineTo(50, 17)..lineTo(82, 41), stroke(11))
      ..drawLine(const Offset(26.5, 55), const Offset(73.5, 55), stroke(9))
      ..drawLine(const Offset(26.5, 69), const Offset(73.5, 69), stroke(9))
      ..drawLine(const Offset(37.5, 83), const Offset(62.5, 83), stroke(9));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// A phone showing [screen] at a real phone's logical size, scaled to [width].
class _Phone extends StatelessWidget {
  const _Phone({required this.screen, required this.width});

  final Widget screen;
  final double width;

  static const _screen = Size(360, 780);

  @override
  Widget build(BuildContext context) {
    final scale = (width - 16) / _screen.width;
    return Container(
      width: width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF05080C),
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: const Color(0xFF2A3544), width: 1.5),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.12),
            blurRadius: 40,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: SizedBox(
          width: _screen.width * scale,
          height: _screen.height * scale,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize(
              size: _screen,
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  size: _screen,
                  padding: const EdgeInsets.only(top: 30),
                  viewPadding: const EdgeInsets.only(top: 30),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(child: screen),
                    const Positioned(top: 0, left: 0, right: 0, child: _StatusBar()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _StatusBar extends StatelessWidget {
  const _StatusBar();

  @override
  Widget build(BuildContext context) => const SizedBox(
    height: 30,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          Text('9:41', style: TextStyle(fontFamily: 'Roboto', fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.foreground)),
          Spacer(),
          Icon(Icons.signal_cellular_alt, size: 15, color: AppColors.foreground),
          SizedBox(width: 4),
          Icon(Icons.wifi, size: 15, color: AppColors.foreground),
          SizedBox(width: 4),
          Icon(Icons.battery_full, size: 15, color: AppColors.foreground),
        ],
      ),
    ),
  );
}

/// Play screenshot: caption on top, phone below, running off the bottom.
class _Shot extends StatelessWidget {
  const _Shot({required this.title, required this.subtitle, required this.screen});

  final String title;
  final String subtitle;
  final Widget screen;

  @override
  Widget build(BuildContext context) => _Backdrop(
    child: Stack(
      children: [
        Positioned(
          top: 56,
          left: 28,
          right: 28,
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30,
                  height: 1.15,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.6,
                  color: AppColors.foreground,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15.5,
                  height: 1.35,
                  color: AppColors.muted,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 188,
          left: 0,
          right: 0,
          child: Center(child: _Phone(screen: screen, width: 290)),
        ),
      ],
    ),
  );
}

Widget _withNav(Widget screen, {required int selected, required bool landlord}) =>
    Builder(
      builder: (context) {
        final l10n = context.l10n;
        final destinations = landlord
            ? [
                NavigationDestination(icon: const Icon(Icons.dashboard_outlined), selectedIcon: const Icon(Icons.dashboard), label: l10n.navOverview),
                NavigationDestination(icon: const Icon(Icons.description_outlined), label: l10n.navLeases),
                NavigationDestination(icon: const Icon(Icons.receipt_long_outlined), selectedIcon: const Icon(Icons.receipt_long), label: l10n.navMonth),
                NavigationDestination(icon: const Icon(Icons.settings_outlined), label: l10n.navSettings),
              ]
            : [
                NavigationDestination(icon: const Icon(Icons.home_outlined), selectedIcon: const Icon(Icons.home), label: l10n.navHome),
                NavigationDestination(icon: const Icon(Icons.description_outlined), label: l10n.navDocuments),
                NavigationDestination(icon: const Icon(Icons.settings_outlined), label: l10n.navSettings),
              ];
        return Scaffold(
          body: screen,
          bottomNavigationBar: NavigationBar(
            selectedIndex: selected,
            destinations: destinations,
          ),
        );
      },
    );

// --- Sample data --------------------------------------------------------------

const _month = '2026-08';

TenantData _tenantData() {
  TenantCharge charge(String id, String description, int cents, {
    required String due,
    String? paidAt,
    required ChargeType type,
    ChargeStatus status = ChargeStatus.due,
    ChargeBreakdown? breakdown,
    String period = _month,
  }) => TenantCharge(
    id: id,
    description: description,
    amountCents: cents,
    dueDate: due,
    paidAt: paidAt,
    periodMonth: period,
    status: paidAt != null ? ChargeStatus.paid : status,
    type: type,
    breakdown: breakdown,
  );

  return TenantData(
    leases: const [
      TenantLease(leaseId: 'l1', tenantName: 'Emma Novak', propertyName: 'Maple House', unitName: 'Apartment 1', status: LeaseStatus.active),
    ],
    overview: TenantOverview(
      leaseId: 'l1',
      tenantName: 'Emma Novak',
      leaseStart: '2025-03-01',
      rentAmountCents: 65000,
      depositAmountCents: 130000,
      utilityDueOffsetMonths: 1,
      utilityDueDay: 'endOfMonth',
      months: [
        TenantMonth(
          month: '2026-09',
          totalCents: 65000,
          utilityCreditCents: 0,
          payableCents: 65000,
          rent: charge('r9', 'Rent', 65000, due: '2026-09-15', paidAt: '2026-09-12', type: ChargeType.rent, period: '2026-09'),
          utilities: const [],
        ),
        TenantMonth(
          month: _month,
          totalCents: 65000 + 12820,
          utilityCreditCents: 666,
          payableCents: 65000 + 12820 - 666,
          rent: charge('r8', 'Rent', 65000, due: '2026-08-15', paidAt: '2026-08-14', type: ChargeType.rent),
          utilities: [
            charge('u1', 'Electricity', 6480, due: '2026-09-30', type: ChargeType.utility,
                breakdown: const ChargeBreakdown(totalUsage: 818, tenantUsage: 212, unit: 'kWh', totalBillCents: 25000)),
            charge('u2', 'Water', 1840, due: '2026-09-30', type: ChargeType.utility,
                breakdown: const ChargeBreakdown(totalUsage: 22.2, tenantUsage: 7.2, unit: 'm³', totalBillCents: 5670)),
            charge('u3', 'Heating', 4500, due: '2026-09-30', type: ChargeType.utility),
          ],
        ),
      ],
    ),
  );
}

const _overview = DashboardOverview(
  month: '2026-09',
  year: 2026,
  money: DashboardMoney(
    rentCollectedThisMonthCents: 245000,
    utilitiesCollectedThisMonthCents: 38620,
    rentCollectedYearCents: 2210000,
    utilitiesCollectedYearCents: 342180,
    overdueAmountCents: 65000,
    overdueCount: 1,
    dueAmountCents: 22150,
    dueCount: 2,
    expectedMonthlyRentCents: 310000,
  ),
  attention: [
    AttentionItem(chargeId: 'c1', leaseId: 'l2', tenantName: 'Luka Kos', description: 'Rent', amountCents: 65000, dueDate: '2026-09-15', status: ChargeStatus.overdue, type: ChargeType.rent),
    AttentionItem(chargeId: 'c2', leaseId: 'l1', tenantName: 'Emma Novak', description: 'Utilities', amountCents: 12154, dueDate: '2026-09-30', status: ChargeStatus.due, type: ChargeType.utility),
  ],
  leases: [
    DashboardLease(leaseId: 'l1', tenantName: 'Emma Novak', propertyName: 'Maple House', unitName: 'Apartment 1', rentAmountCents: 65000, overdueCount: 0, overdueAmountCents: 0),
    DashboardLease(leaseId: 'l2', tenantName: 'Luka Kos', propertyName: 'Maple House', unitName: 'Apartment 2', rentAmountCents: 65000, overdueCount: 1, overdueAmountCents: 65000),
    DashboardLease(leaseId: 'l3', tenantName: 'Sara Horvat', propertyName: 'Riverside Loft', unitName: 'Loft', rentAmountCents: 90000, overdueCount: 0, overdueAmountCents: 0),
  ],
);

MeterReadingEntry _r(String cat, String month, double value, [String? lease]) => MeterReadingEntry(
  categoryId: cat,
  consumptionMonth: month,
  scope: lease == null ? ReadingScope.property : ReadingScope.lease,
  leaseId: lease,
  reading: value,
);

UtilityRow _row(String id, String name, String unit, AllocationType type, {
  bool meter = false,
  int? cents,
  double? usage,
  int? bill,
  double? totalUsage,
  bool published = false,
}) => UtilityRow(
  categoryId: id,
  categoryName: name,
  unit: unit,
  usesMeter: meter,
  allocationType: type,
  amountCents: cents,
  chargeId: cents == null ? null : 'ch-$id',
  tenantUsage: usage,
  totalBillCents: bill,
  totalUsage: totalUsage,
  dueDate: '2026-09-30',
  publishedAt: published ? 1 : null,
);

LeaseMonth _leaseMonth(List<UtilityRow> rows, {int credit = 0}) {
  final gross = rows.fold<int>(0, (s, r) => s + (r.amountCents ?? 0));
  return LeaseMonth(
    month: _month,
    utilityBalance: UtilityBalance(
      grossCents: gross,
      openingBalanceCents: credit,
      appliedCreditCents: credit,
      netCents: gross - credit,
      closingBalanceCents: 0,
    ),
    rent: const RentRow(chargeId: 'rent', amountCents: 65000, dueDate: '2026-08-15', status: ChargeStatus.paid, paidAt: '2026-08-14'),
    utilities: rows,
  );
}

SettlementMonth _settlement() => SettlementMonth(
  month: _month,
  meters: PropertyMeters(
    categories: const [
      MeteredUtility(id: 'elec', name: 'Electricity', unit: 'kWh'),
      MeteredUtility(id: 'water', name: 'Water', unit: 'm³'),
    ],
    leases: const [
      PropertyLease(id: 'l1', tenantName: 'Emma Novak', unitName: 'Apartment 1'),
      PropertyLease(id: 'l2', tenantName: 'Luka Kos', unitName: 'Apartment 2'),
    ],
    readings: [
      _r('elec', _month, 45120), _r('elec', '2026-07', 44302),
      _r('elec', _month, 21430, 'l1'), _r('elec', '2026-07', 21218, 'l1'),
      _r('elec', _month, 18905, 'l2'), _r('elec', '2026-07', 18601, 'l2'),
      _r('water', _month, 1284.6), _r('water', '2026-07', 1262.4),
      _r('water', _month, 412.3, 'l1'), _r('water', '2026-07', 405.1, 'l1'),
      _r('water', _month, 298.8, 'l2'), _r('water', '2026-07', 290.7, 'l2'),
    ],
  ),
  leaseMonths: {
    'l1': _leaseMonth([
      _row('elec', 'Electricity', 'kWh', AllocationType.consumption, meter: true, cents: 6480, usage: 212, bill: 25000, totalUsage: 818),
      _row('water', 'Water', 'm³', AllocationType.consumption, meter: true, cents: 1840, usage: 7.2, bill: 5670, totalUsage: 22.2),
      _row('heat', 'Heating', '', AllocationType.fixed, cents: 4500),
    ], credit: 666),
    'l2': _leaseMonth([
      _row('elec', 'Electricity', 'kWh', AllocationType.consumption, meter: true, cents: 9296, usage: 304, bill: 25000, totalUsage: 818, published: true),
      _row('water', 'Water', 'm³', AllocationType.consumption, meter: true, cents: 2069, usage: 8.1, bill: 5670, totalUsage: 22.2, published: true),
      _row('heat', 'Heating', '', AllocationType.fixed, cents: 4500, published: true),
    ]),
  },
);

SettlementState _settlementState(SettlementStep step) => SettlementState(
  month: _month,
  step: step,
  properties: const LoadState.success([
    PropertyItem(id: 'p1', name: 'Maple House', address: '12 Maple Street', units: []),
  ]),
  propertyId: 'p1',
  data: LoadState.success(_settlement()),
  saved: const {'reading:elec:main', 'reading:elec:l1', 'reading:elec:l2'},
);

// --- The assets ----------------------------------------------------------------

void main() {
  setUpAll(() async {
    await Directory(_out).create(recursive: true);
    await _loadFonts();
    await initializeDateFormatting();
  });

  testWidgets('icon', (tester) async {
    await tester.runAsync(() async {
      final result = await Process.run('sips', [
        '-z', '512', '512', 'assets/brand/app_icon.png', '--out', '$_out/icon-512.png',
      ]);
      expect(result.exitCode, 0, reason: '${result.stderr}');
    });
  });

  testWidgets('feature graphic', (tester) async {
    final tenant = _MockTenantBloc();
    whenListen(tenant, const Stream<LoadState<TenantData>>.empty(),
        initialState: LoadState.success(_tenantData()));
    await _capture(
      tester,
      _app(
        _Backdrop(
          child: Stack(
            children: [
              Positioned(
                left: 72,
                top: 0,
                bottom: 0,
                width: 520,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomPaint(size: const Size(76, 76), painter: _MarkPainter()),
                        const SizedBox(width: 18),
                        const Text.rich(
                          TextSpan(children: [
                            TextSpan(text: 'Rent'),
                            TextSpan(text: 'LOG', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.primary)),
                          ]),
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 58, letterSpacing: -1.2, color: AppColors.foreground),
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Rent & utilities, finally clear.',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 34, fontWeight: FontWeight.w700, letterSpacing: -0.6, color: AppColors.foreground),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Meters, bills and payments in one place,\nfor landlords and their tenants.',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 20, height: 1.4, color: AppColors.muted),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 70,
                top: 44,
                child: BlocProvider<TenantBloc>.value(
                  value: tenant,
                  child: const _Phone(screen: TenantHomeScreen(), width: 250),
                ),
              ),
            ],
          ),
        ),
      ),
      size: const Size(1024, 500),
      pixelRatio: 1,
      file: 'feature-graphic.jpg',
    );
  });

  Future<void> shot(
    WidgetTester tester,
    String file, {
    required String title,
    required String subtitle,
    required Widget screen,
  }) => _capture(
    tester,
    _app(_Shot(title: title, subtitle: subtitle, screen: screen)),
    size: const Size(360, 640),
    pixelRatio: 3,
    file: file,
  );

  testWidgets('screenshot 1: tenant', (tester) async {
    final bloc = _MockTenantBloc();
    whenListen(bloc, const Stream<LoadState<TenantData>>.empty(),
        initialState: LoadState.success(_tenantData()));
    await shot(
      tester,
      'screenshot-1-tenant.jpg',
      title: 'Know exactly\nwhat to pay',
      subtitle: 'Rent, costs and any overpayment,\nmonth by month.',
      screen: BlocProvider<TenantBloc>.value(
        value: bloc,
        child: _withNav(const TenantHomeScreen(), selected: 0, landlord: false),
      ),
    );
  });

  testWidgets('screenshot 2: overview', (tester) async {
    final bloc = _MockOverviewBloc();
    whenListen(bloc, const Stream<LoadState<DashboardOverview>>.empty(),
        initialState: const LoadState.success(_overview));
    await shot(
      tester,
      'screenshot-2-overview.jpg',
      title: 'Your rentals\nat a glance',
      subtitle: "What's collected, due and overdue\nthis month.",
      screen: BlocProvider<LoaderBloc<DashboardOverview>>.value(
        value: bloc,
        child: _withNav(const LandlordOverviewScreen(), selected: 0, landlord: true),
      ),
    );
  });

  Future<void> settlementShot(
    WidgetTester tester,
    SettlementStep step,
    String file,
    String title,
    String subtitle,
  ) {
    final bloc = _MockSettlementBloc();
    whenListen(bloc, const Stream<SettlementState>.empty(),
        initialState: _settlementState(step));
    return shot(
      tester,
      file,
      title: title,
      subtitle: subtitle,
      screen: BlocProvider<SettlementBloc>.value(
        value: bloc,
        child: _withNav(const SettlementView(), selected: 2, landlord: true),
      ),
    );
  }

  testWidgets('screenshot 3: meters', (tester) => settlementShot(
    tester,
    SettlementStep.meters,
    'screenshot-3-meters.jpg',
    'Meter readings\nin seconds',
    'Main meter and every unit,\nwith usage worked out for you.',
  ));

  testWidgets('screenshot 4: review', (tester) => settlementShot(
    tester,
    SettlementStep.review,
    'screenshot-4-review.jpg',
    'Publish, and tenants\nare notified',
    'Costs split by your lease rules,\nready to send.',
  ));
}
