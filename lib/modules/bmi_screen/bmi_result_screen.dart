// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'BMi.dart';

class result_screen extends StatelessWidget {

  bool isMale ;
  int age ;
  double result ;

  result_screen({
    required this.isMale,
    required this.age,
    required this.result ,

  });
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title:const Text(
            'BMI Result',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.white
          ),

        ),
        elevation: 0.0,
        backgroundColor: Colors.indigo,
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              'gender :${ isMale ? 'Male' : 'Female' }',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Result : ${result.round()} ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30.0,

              ),
            ),
            SizedBox(
              height: 10.0,
            ),
           Text(
              'age : $age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30.0,

              ),
            ),
          ],
        ),
      ) ,


    );
  }
}
