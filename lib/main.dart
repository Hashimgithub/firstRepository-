import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/language/app_localizations.dart';
import 'core/language/cubit/locale_cubit.dart';
import 'core/theme/cubit/theme_cubit.dart';
import 'pages/main/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocaleCubit()..getSavedLanguage(),
        ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit()..getCurrentTheme(),
        ),
      ],
      // * Your app will be rebuilt each time you emit new state of
      // * AppThemeState in your AppThemeCubit
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) => (state is ChangedThemeState)
            ? _MaterialApp(theme: state.themeData!)
            : Container(),
      ),
    );
  }
}

class _MaterialApp extends StatelessWidget {
  final ThemeData theme;

  const _MaterialApp({required this.theme});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, ChangedLocaleState>(
      builder: (context, state) {
        return MaterialApp(
          locale: Locale(state.locale, state.language),
          // contare:state.language,
          supportedLocales: const [
            Locale('en'),
            Locale('ar'),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          localeResolutionCallback: (deviceLocale, supportedLocales) {
            for (var locale in supportedLocales) {
              if (deviceLocale != null &&
                  deviceLocale.languageCode == locale.languageCode) {
                return deviceLocale;
              }
            }

            return supportedLocales.first;
          },
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          theme: theme,
        );
      },
    );
  }
}
