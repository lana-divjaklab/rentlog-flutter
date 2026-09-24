import 'package:flutter/material.dart';

/// The web app's dark tokens (`src/index.css`), one to one. RentLOG has a
/// single theme on every platform, so there is no light counterpart.
abstract final class AppColors {
  static const background = Color(0xFF0A0E14);
  static const card = Color(0xFF141B24);
  static const elevated = Color(0xFF1B2531);
  static const accent = Color(0xFF202B39);
  static const border = Color(0xFF232F3D);
  static const input = Color(0xFF2A3544);

  static const foreground = Color(0xFFF1F5F9);
  static const muted = Color(0xFF94A3B8);

  static const primary = Color(0xFF14B8A6);
  static const primaryLight = Color(0xFF5EEAD4);
  static const onPrimary = Color(0xFF042F2E);

  static const success = Color(0xFF22C55E);
  static const warning = Color(0xFFF59E0B);
  static const destructive = Color(0xFFEF4444);
  static const onDestructive = Color(0xFFFEF2F2);

  /// Badges sit on their own colour at 15% (`src/components/ui/badge.tsx`).
  static Color tint(Color color) => color.withValues(alpha: 0.15);
}

abstract final class AppRadius {
  static const sm = 6.0;
  static const md = 8.0;
  static const lg = 10.0;
  static const xl = 14.0;
}
