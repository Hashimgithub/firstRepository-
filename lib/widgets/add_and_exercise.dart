import 'package:flutter/material.dart';

import '../pages/category_screen.dart';

import 'gradient_text_button.dart';

Widget myaddExerciseWidget({required BuildContext context, required int day}) {
  double pageWidth = MediaQuery.of(context).size.width;

  return Column(
    children: [
      SizedBox(height: pageWidth / 5.5),
      gradientTextButton(
        context: context,
        title: 'Add Course Day $day',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => CategoryScreen(),
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
  );
}
