import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../pages/setting_screen.dart';

Widget appBar(context,
    {icon = Icons.notifications,
    title = 'GYM97',
    tooltip = 'Settings',
    goTo = const SettingScreen(),
    push = 'push'}) {
  double pageWidth = MediaQuery.of(context).size.width;
  return PreferredSize(
    preferredSize: const Size(double.infinity, kToolbarHeight),
    child: ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      child: AppBar(
        backgroundColor: Colors.white.withOpacity(.5),
        elevation: 0,
        title: Text(
          title,
          style: TextStyle(
            fontSize: pageWidth / 17,
            color: Colors.black.withOpacity(.7),
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: tooltip,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(
              icon,
              color: Colors.purple.withOpacity(.7),
            ),
            onPressed: () {
              HapticFeedback.lightImpact();

              push == 'push'
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          print('push');

                          return goTo;
                        },
                      ),
                    )
                  : Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          print('pushReplacement');

                          return goTo;
                        },
                      ),
                    );
            },
          ),
          const Text('  '),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    ),
  );
}
