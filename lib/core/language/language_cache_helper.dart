import 'package:shared_preferences/shared_preferences.dart';

class LanguageCachHelper {
  Future<void> cachLanguageCode(String languageCode, String language) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("LOCALE", languageCode);
    sharedPreferences.setString("LANGUAGE", language);
  }

  Future<List> getCachedLanguage() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedLanguageCode = sharedPreferences.getString("LOCALE");
    final cachedLanguage = sharedPreferences.getString("LANGUAGE");
    if (cachedLanguageCode != null && cachedLanguage != null) {
      return [cachedLanguageCode, cachedLanguage];
    } else {
      return ["en", "US"];
    }
  }

  getcachedContaryCode() {}
}
