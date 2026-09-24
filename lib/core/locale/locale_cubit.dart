import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// `null` means "follow the phone".
typedef LanguagePreference = String?;

/// The app speaks Slovenian or English. Until the user chooses, it follows
/// the phone: Slovenian on a Slovenian phone, English everywhere else.
class LocaleCubit extends Cubit<LanguagePreference> {
  LocaleCubit(this._prefs) : super(_prefs.getString(_key));

  final SharedPreferences _prefs;

  static const _key = 'language';
  static const supported = ['sl', 'en'];

  /// The language actually in use.
  String get languageCode => resolve(state);

  static String resolve(LanguagePreference preference) {
    if (preference != null && supported.contains(preference)) {
      return preference;
    }
    final phone = PlatformDispatcher.instance.locale.languageCode;
    return phone == 'sl' ? 'sl' : 'en';
  }

  Future<void> choose(LanguagePreference preference) async {
    if (preference == null) {
      await _prefs.remove(_key);
    } else {
      await _prefs.setString(_key, preference);
    }
    emit(preference);
  }
}
