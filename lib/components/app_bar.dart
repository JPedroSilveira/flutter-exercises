import 'package:flutter/material.dart';

appBar({required String title}) {
  return AppBar(
    title: Text(
      title, 
      style: TextStyle(fontWeight: FontWeight.bold), 
      textAlign: TextAlign.start, 
      textScaleFactor: 0.9
    ),
  );
}