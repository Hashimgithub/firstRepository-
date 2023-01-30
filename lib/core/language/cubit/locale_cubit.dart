// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';

import '../language_cache_helper.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<ChangedLocaleState> {
  LocaleCubit() : super(ChangedLocaleState(locale: 'en', language: 'US'));
  Future<void> getSavedLanguage() async {
    final List cachedLanguage = await LanguageCachHelper().getCachedLanguage();
    emit(
      ChangedLocaleState(
        language: cachedLanguage[1],
        locale: cachedLanguage[0],
      ),
    );
  }

  Future<void> changeLanguage(
    String languageCode,
    String language,
  ) async {
    await LanguageCachHelper().getCachedLanguage();
    emit(
      ChangedLocaleState(
        locale: languageCode,
        language: language,
      ),
    );
  }
}
