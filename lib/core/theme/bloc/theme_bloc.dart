import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_theme copy.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  //
  ThemeBloc()
      : super(
          ThemeState(
            themeData: AppThemes.appThemeData[AppTheme.lightTheme]!,
          ),
        );
  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ThemeEvent) {
      emit(ThemeState(
        themeData: AppThemes.appThemeData[event.appTheme]!,
      ));
    }
  }
}
