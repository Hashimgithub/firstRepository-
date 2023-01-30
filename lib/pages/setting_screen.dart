import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/language/cubit/locale_cubit.dart';
import '/core/language/app_localizations.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "settings".tr(context),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocConsumer<LocaleCubit, ChangedLocaleState>(
            listener: (context, state) {
              Navigator.pop(context);
            },
            builder: (context, state) {
              return DropdownButton(
                value: state.language,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: ['KSA', 'US', 'IQ'].map((String items) {
                  return DropdownMenuItem<String>(
                    value: items,
                    child: Text(items == 'US'
                        ? 'English'
                        : (items == 'KSA')
                            ? 'العربية'
                            : 'عراقي'),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    if (newValue == 'KSA') {
                      BlocProvider.of<LocaleCubit>(context)
                          .changeLanguage('ar', newValue);
                    }
                    if (newValue == 'US') {
                      BlocProvider.of<LocaleCubit>(context)
                          .changeLanguage('en', newValue);
                    }
                    if (newValue == 'IQ') {
                      BlocProvider.of<LocaleCubit>(context)
                          .changeLanguage('ar', newValue);
                    }
                  }
                },
              );
            },
          ),
        )));
  }
}
