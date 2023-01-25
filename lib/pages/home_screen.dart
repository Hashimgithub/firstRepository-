import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/back_ground_color.dart';
import '../widgets/build_app_bar.dart';
import '../widgets/card_widget.dart';
import 'add_course_screen.dart';
import 'setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController? _controller;
  AnimationController? _controller2;
  Animation<double>? _animation;
  Animation<double>? _animation2;

  @override
  void initState() {
    super.initState();

    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller!, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: 0, end: -50).animate(CurvedAnimation(
        parent: _controller2!, curve: Curves.fastLinearToSlowEaseIn));

    _controller!.forward();
    _controller2!.forward();
  }

  @override
  void dispose() {
    _controller!.dispose();
    _controller2!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // background color
          const backgroundColor(),

          /// ListView
          ListView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: pageWidth / 5.5),
              card(
                context: context,
                title: 'Courses',
                subtitle: 'Your Courses',
                icon: Icons.fitness_center,
                route: const AddCourseScreen(),
                animation: _animation,
                animation2: _animation2,
              ),
              card(
                context: context,
                title: 'Food',
                subtitle: 'Helthy Food',
                icon: Icons.food_bank,
                route: const SettingScreen(),
                animation: _animation,
                animation2: _animation2,
              ),
              card(
                context: context,
                title: 'Gym',
                subtitle: 'Gym Gym',
                icon: Icons.sports_gymnastics_rounded,
                route: const SettingScreen(),
                animation: _animation,
                animation2: _animation2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
