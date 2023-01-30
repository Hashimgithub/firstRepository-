import 'package:flutter/material.dart';

import '../widgets/add_and_exercise.dart';
import '../widgets/back_ground_color.dart';
import '../widgets/build_app_bar.dart';
import 'main/main_page.dart';

class CourseDetailsScreen2 extends StatefulWidget {
  const CourseDetailsScreen2({super.key, required this.days});
  final int days;
  @override
  State<CourseDetailsScreen2> createState() => _CourseDetailsScreen2State();
}

class _CourseDetailsScreen2State extends State<CourseDetailsScreen2> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          myaddExerciseWidget(context: context, day: currentIndex + 1),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        height: size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          alignment: Alignment.center,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.days,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: size.width * .024),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(
                  () {
                    currentIndex = index;
                  },
                );
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      bottom: index == currentIndex ? 0 : size.width * .029,
                      right: size.width * .0422,
                      left: size.width * .0422,
                    ),
                    width: size.width * .128,
                    height: index == currentIndex ? size.width * .014 : 0,
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                  ),
                  Text(
                    'Day ${index + 1}',
                    style: TextStyle(
                      fontSize: 15,
                      color: index == currentIndex
                          ? Colors.purple
                          : Colors.black38,
                    ),
                  ),
                  SizedBox(height: size.width * .03),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
