// Renders the app icon and splash images from the RentLOG mark.
//
// The geometry is the web app's public/favicon.svg (which points back here):
// a chevron roof over three ledger lines on a dark tile. Drawn with Flutter's
// own canvas so no image tooling is needed.
//
// Run:  flutter test tool/gen_branding.dart
// Then: dart run flutter_launcher_icons && dart run flutter_native_splash:create
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';

const _tileTop = Color(0xFF0B1119);
const _tileBottom = Color(0xFF16222E);
const _markTop = Color(0xFF14B8A6);
const _markBottom = Color(0xFF5EEAD4);

/// Draws the mark in its 100×100 design space, [scale]d and centred on a
/// square canvas of [size].
void _paintMark(Canvas canvas, double size, double scale) {
  final unit = size * scale / 100;
  final offset = (size - 100 * unit) / 2;
  canvas
    ..save()
    ..translate(offset, offset)
    ..scale(unit);

  // The favicon's gradient runs down the mark itself (y 17 → 88).
  final shader = ui.Gradient.linear(
    const Offset(0, 17),
    const Offset(0, 88),
    [_markTop, _markBottom],
  );
  Paint stroke(double width) => Paint()
    ..shader = shader
    ..style = PaintingStyle.stroke
    ..strokeWidth = width
    ..strokeCap = StrokeCap.round
    ..strokeJoin = StrokeJoin.round;

  canvas
    ..drawPath(
      Path()
        ..moveTo(18, 41)
        ..lineTo(50, 17)
        ..lineTo(82, 41),
      stroke(11),
    )
    ..drawLine(const Offset(26.5, 55), const Offset(73.5, 55), stroke(9))
    ..drawLine(const Offset(26.5, 69), const Offset(73.5, 69), stroke(9))
    ..drawLine(const Offset(37.5, 83), const Offset(62.5, 83), stroke(9))
    ..restore();
}

Future<void> _write(
  String path,
  int size,
  void Function(Canvas canvas, double size) paint,
) async {
  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder);
  paint(canvas, size.toDouble());
  final image = await recorder.endRecording().toImage(size, size);
  final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
  await File(path).writeAsBytes(bytes!.buffer.asUint8List());
}

void main() {
  test('generate branding', () async {
    await Directory('assets/brand').create(recursive: true);

    // iOS/legacy Android: full-bleed tile (the OS rounds the corners).
    // The mark sits at the favicon's 62% scale.
    await _write('assets/brand/app_icon.png', 1024, (canvas, size) {
      canvas.drawRect(
        Rect.fromLTWH(0, 0, size, size),
        Paint()
          ..shader = ui.Gradient.linear(
            Offset.zero,
            Offset(0, size),
            [_tileTop, _tileBottom],
          ),
      );
      _paintMark(canvas, size, 0.62);
    });

    // Android adaptive foreground: transparent, mark inside the 66% safe zone.
    await _write('assets/brand/app_icon_foreground.png', 1024, (canvas, size) {
      _paintMark(canvas, size, 0.46);
    });

    // Splash: the mark alone on the background colour set in pubspec.
    // Android 12 crops to a circle, hence the generous margin.
    await _write('assets/brand/splash_mark.png', 1152, (canvas, size) {
      _paintMark(canvas, size, 0.42);
    });
  });
}
