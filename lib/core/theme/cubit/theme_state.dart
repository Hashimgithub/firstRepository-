part of 'theme_cubit.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props => [];
}

class ThemeInitial extends ThemeState {}

class ChangedThemeState extends ThemeState {
  final ThemeData? themeData;
  const ChangedThemeState({
    required this.themeData,
  });

  @override
  List<Object> get props => [themeData!];
}
