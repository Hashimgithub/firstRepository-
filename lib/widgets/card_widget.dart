import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget card({
  BuildContext? context,
  String? title,
  String? subtitle,
  IconData? icon,
  Widget? route,
  animation,
  animation2,
}) {
  double pageWidth = MediaQuery.of(context!).size.width;
  return Opacity(
    opacity: animation!.value,
    child: Transform.translate(
      offset: Offset(0, animation2!.value),
      child: Container(
        height: pageWidth / 2.3,
        width: pageWidth,
        padding: EdgeInsets.fromLTRB(
            pageWidth / 20, 0, pageWidth / 20, pageWidth / 20),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            HapticFeedback.lightImpact();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => route!));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                border:
                    Border.all(color: Colors.white.withOpacity(.1), width: 1)),
            child: Padding(
              padding: EdgeInsets.all(pageWidth / 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: pageWidth / 3,
                    width: pageWidth / 3,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: pageWidth / 10,
                    ),
                  ),
                  SizedBox(width: pageWidth / 40),
                  SizedBox(
                    width: pageWidth / 2.05,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title!,
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: pageWidth / 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            wordSpacing: 1,
                          ),
                        ),
                        Text(
                          subtitle!,
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white.withOpacity(1),
                            fontSize: pageWidth / 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Tap to know more',
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: pageWidth / 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
