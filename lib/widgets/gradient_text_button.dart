import 'package:flutter/material.dart';

Widget gradientTextButton({
  width = double.infinity,
  required BuildContext context,
  required String title,
  required Function() onTap,
}) {
  double pageHight = MediaQuery.of(context).size.height;

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: pageHight * 0.05,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Color(0xff7DDFFF),
              Color(0xffB09EFF),
              Color(0xffED92EF),
              Color(0xffF9B1D0),
              Color(0xffE8B8E0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(child: Text(title)),
      ),
    ),
  );
}
