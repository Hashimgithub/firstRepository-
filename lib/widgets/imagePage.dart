import 'package:flutter/material.dart';

import '../main_page.dart';
import 'back_ground_color.dart';
import 'build_app_bar.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    double pageWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(context,
          icon: Icons.home,
          title: 'GYM97',
          tooltip: 'Home',
          goTo: HomePage(),
          push: 'pushRepl') as PreferredSizeWidget,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const backgroundColor(),
          Column(
            children: [
              SizedBox(height: pageWidth / 5.5),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: Center(child: Text('Arm-Blaster-Hammer-Curl')),
              ),
              Expanded(
                child: Center(
                  child: Hero(
                    // tag: exerciseBicepName[i],
                    tag: 'exerciseBicepName[i]',
                    child: Image.asset(
                      'assets/images/Bicep/Arm-Blaster-Hammer-Curl.gif',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
