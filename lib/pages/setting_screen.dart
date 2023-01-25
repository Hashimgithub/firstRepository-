import 'package:flutter/material.dart';

import '../widgets/back_ground_color.dart';
import '../widgets/build_app_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context) as PreferredSizeWidget,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: const [
          // background color
          backgroundColor(),

          /// ListView
        ],
      ),
    );
  }
}
