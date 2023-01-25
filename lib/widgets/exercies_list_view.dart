import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../main_page.dart';
import 'back_ground_color.dart';
import 'build_app_bar.dart';
import 'imagePage.dart';

class SlideAnimation1 extends StatelessWidget {
  const SlideAnimation1({super.key});
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
                Expanded(
                  child: AnimationLimiter(
                    child: ListView.builder(
                      padding: EdgeInsets.all(pageWidth / 30),
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemCount: 20,
                      itemBuilder: (BuildContext c, int i) {
                        return AnimationConfiguration.staggeredList(
                          position: i,
                          delay: const Duration(milliseconds: 100),
                          child: SlideAnimation(
                            duration: const Duration(milliseconds: 2500),
                            curve: Curves.fastLinearToSlowEaseIn,
                            horizontalOffset: 30,
                            verticalOffset: 300.0,
                            child: FlipAnimation(
                              duration: const Duration(milliseconds: 3000),
                              curve: Curves.fastLinearToSlowEaseIn,
                              flipAxis: FlipAxis.y,
                              child: Container(
                                margin: EdgeInsets.only(bottom: pageWidth / 20),
                                height: pageWidth / 4,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 40,
                                      spreadRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // to convert text from hi-hashim to hi hashim
                                      // without - t
                                      // to remove - from text
                                      Text('Arm-Blaster-Hammer-Curl   $i'),
                                      // exerciseBicepName[i] to call string from list
                                      GestureDetector(
                                        child: Hero(
                                          tag: 'exerciseBicepName[i]',
                                          child: Image.asset(
                                              'assets/images/Bicep/Arm-Blaster-Hammer-Curl.gif',
                                              fit: BoxFit.contain),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                              builder: (BuildContext context) =>
                                                  ImagePage(),
                                            ),
                                          );
                                        },
                                      ),
                                      // CircleAvatar(
                                      //   radius: 70,
                                      //   backgroundColor: Colors.green,
                                      //   child: Image.asset(
                                      //       'assets/images/Bicep/Barbell-Curl.gif'),
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
