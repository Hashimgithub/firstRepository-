import 'package:flutter/material.dart';
import '../pages/setting_screen copy.dart';
import '/core/language/app_localizations.dart';

import '../pages/setting_screen.dart';
import 'back_ground_color.dart';
import 'build_list_tile.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
      child: Stack(children: [
    // background color
    const backgroundColor(),

    ListView(
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
          ),
          accountEmail: Text('jane.doe@example.com'),
          accountName: Text(
            'Jane Doe',
            style: TextStyle(fontSize: 24.0),
          ),
          decoration: BoxDecoration(
            color: Colors.black87,
          ),
        ),
        myListTile(
          context: context,
          title: "shareapp".tr(context),
          icon: Icons.share_outlined,
          goTo: const SettingsPageCubit(),
        ),
        const Divider(),
        myListTile(
          context: context,
          title: "RateApp".tr(context),
          icon: Icons.star_rate,
          goTo: const SettingScreen(),
        ),
        const Divider(),
        myListTile(
          context: context,
          title: "settings".tr(context),
          icon: Icons.settings,
          goTo: const SettingScreen(),
        ),
      ],
    )
  ]));
}
