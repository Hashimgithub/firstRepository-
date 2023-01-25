import 'package:flutter/material.dart';

ListTile myListTile({
  required BuildContext context,
  required String title,
  required IconData icon,
  required Widget goTo,
}) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.white,
    ),
    title: Text(
      title,
      style: const TextStyle(fontSize: 24.0, color: Colors.white),
    ),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => goTo,
        ),
      );
    },
  );
}
