import 'package:flutter/material.dart';

import '../main_page.dart';
import '../widgets/back_ground_color.dart';
import '../widgets/build_app_bar.dart';
import '../widgets/days_exercise.dart';
import '../widgets/gradient_text_button.dart';
import '../widgets/my_text_form_feild.dart';
import 'course_details_page2.dart';

class CourseDetailsScreen1 extends StatelessWidget {
  const CourseDetailsScreen1({super.key});

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
          // background color
          const backgroundColor(),
          Column(
            children: [
              SizedBox(height: pageWidth / 5.5),
              Expanded(
                child: ListView(
                  children: [
                    myTextFormField(
                      context: context,
                      title: 'Name',
                      subTitle: 'Enter Your Name ...',
                    ),
                    myTextFormField(
                      context: context,
                      title: 'Age',
                      subTitle: 'Enter Your Age ...',
                    ),
                    myTextFormField(
                      context: context,
                      title: 'Length',
                      subTitle: 'Enter Your Length ...',
                    ),
                    myTextFormField(
                      context: context,
                      title: 'Weght',
                      subTitle: 'Enter Your Weght ...',
                    ),
                    const Center(child: Text('Number Of Days')),
                    const ExerciseDays()
                  ],
                ),
              ),
            ],
          )

          /// ListView
        ],
      ),
    );
  }
}
