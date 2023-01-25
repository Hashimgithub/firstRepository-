import 'package:flutter/material.dart';

import '../pages/home_screen.dart';
import '../pages/porfile_screen.dart';

List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.location_on_outlined,
  Icons.chat_bubble,
  Icons.person,
];

List<Widget> widgetList = [
  const HomeScreen(),
  const Center(
    child: Text('FUCK 2'),
  ),
  const Center(
    child: Text('FUCK 3'),
  ),
  ProfileScreen()
];
