import 'package:flutter/material.dart';

Widget textIconButton({
  required void Function() onPressed,
  required String text,
  required IconData icon
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextButton(
        child: Row(
          children: [
            Icon(icon, color: Colors.black),
            SizedBox(width: 7),
            Text(text, style: TextStyle(color: Colors.black)),
          ],
        ),
        onPressed: onPressed
      ),
    ],
  );
}
