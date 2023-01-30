import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/theme/app_theme.dart';
import '../core/theme/cubit/theme_cubit.dart';

class SettingsPageCubit extends StatelessWidget {
  const SettingsPageCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[itemAppTheme]!.primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme.name,
                style: appThemeData[itemAppTheme]!.textTheme.titleMedium,
              ),
              onTap: () {
                context.read<ThemeCubit>().themeChanged(itemAppTheme);
              },
            ),
          );
        },
      ),
    );
  }
}
