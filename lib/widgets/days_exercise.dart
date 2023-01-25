import 'package:flutter/material.dart';

import '../pages/course_details_page2.dart';
import 'gradient_text_button.dart';

class ExerciseDays extends StatefulWidget {
  const ExerciseDays({super.key});

  @override
  State<ExerciseDays> createState() => _ExerciseDaysState();
}

class _ExerciseDaysState extends State<ExerciseDays> {
  int days = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: gradientTextButton(
                  context: context,
                  title: '-',
                  onTap: () {
                    if (days > 1) {
                      setState(() {
                        days--;
                      });
                    }
                  },
                ),
              ),
              Expanded(
                child: gradientTextButton(
                  context: context,
                  title: days.toString(),
                  onTap: () {},
                ),
              ),
              Expanded(
                child: gradientTextButton(
                  context: context,
                  title: '+',
                  onTap: () {
                    if (days < 7) {
                      setState(() {
                        days++;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          addCourseButtn(context),
        ],
      ),
    );
  }

  Padding addCourseButtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: gradientTextButton(
        context: context,
        title: 'Add Course',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => CourseDetailsScreen2(
                days: days,
              ),
            ),
          );
        },
      ),
    );
  }
}
