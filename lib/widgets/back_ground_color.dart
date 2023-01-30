import 'package:flutter/material.dart';

class backgroundColor extends StatelessWidget {
  const backgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            // Theme.of(context).primaryColor.withOpacity(0.8),
            // Theme.of(context).primaryColor.withOpacity(0.6),
            // Theme.of(context).primaryColor.withOpacity(0.4),
            // Theme.of(context).primaryColor.withOpacity(0.2),
            // Colors.white.withBlue(2),
            // Color(0xff7DDFFF),
            // Color(0xffB09EFF),
            // Color(0xffED92EF),
            // Color(0xffF9B1D0),
            Colors.black
            // Color(0xffE8B8E0),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
