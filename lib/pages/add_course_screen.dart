import 'package:flutter/material.dart';
import '/core/language/app_localizations.dart';

import 'main/main_page.dart';
import '../widgets/back_ground_color.dart';
import '../widgets/build_app_bar.dart';
import '../widgets/gradient_text_button.dart';
import 'course_details_page1.dart';

class AddCourseScreen extends StatelessWidget {
  const AddCourseScreen({super.key});

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
              gradientTextButton(
                context: context,
                title: "AddCourse".tr(context),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => CourseDetailsScreen1(),
                    ),
                  );
                },
              ),
              Expanded(
                child: ListView(
                  children: [
                    gradientTextButton(
                      context: context,
                      title: 'mY',
                      onTap: () {},
                    ),
                    gradientTextButton(
                      context: context,
                      title: 'Gym',
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          )

          /// ListView
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.qr_code,
            size: 35,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
