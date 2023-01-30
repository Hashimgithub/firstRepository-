import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../theme_cache_helper.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(ChangedThemeState(themeData: appThemeData[AppTheme.values[5]]));
  getCurrentTheme() async {
    final themeIndex = await ThemeCacheHelper().getCachedThemeIndex();
    final theme =
        AppTheme.values.firstWhere((appTheme) => appTheme.index == themeIndex);
    emit(ChangedThemeState(themeData: appThemeData[theme]!));
  }

  themeChanged(AppTheme theme) async {
    await ThemeCacheHelper().cacheThemeIndex(theme.index);
    emit(ChangedThemeState(themeData: appThemeData[theme]));
  }
}
