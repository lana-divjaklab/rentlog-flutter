import 'package:flutter/foundation.dart';

/// Records why something failed. Screens show a friendly message; this is
/// what `flutter run` / the device console shows to whoever is debugging.
/// debugPrint is kept in release builds, so this works on a real device.
void logError(String where, Object error, [StackTrace? stack]) {
  debugPrint('[RentLOG] $where failed: $error');
  if (stack != null) {
    debugPrint(stack.toString().split('\n').take(12).join('\n'));
  }
}
