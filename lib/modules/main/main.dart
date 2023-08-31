// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
// ignore: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test2/modules/login_screen/LoginScreen.dart';
import 'package:test2/modules/home_screen/home_screen.dart';

import '../bmi_screen/BMi.dart';
import '../random_screens/ScreenUpdate.dart';
import '../random_screens/UserScreen.dart';
import '../bmi_screen/bmi_result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
        home: LoginScreen(),

    );
  }

}




