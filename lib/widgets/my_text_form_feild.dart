import 'package:flutter/material.dart';

myTextFormField(
    {required BuildContext context,
    required String title,
    required String subTitle}) {
  return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          filled: true, //<-- SEE HERE
          fillColor: Colors.white.withOpacity(.5), //<-- SEE HERE
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: title,

          hintText: subTitle,
        ),
      ));

  ;
}
