import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Screen  {
  static BuildContext context;
  static double height=0.0, width=0.0;
  static Color eventBlue=Colors.blue, 
  eventGrey=Colors.grey[200];

  static void showToast(String text) {
    Toast.show(text, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
  }
}