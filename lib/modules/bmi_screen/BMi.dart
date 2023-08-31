// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  bool  isMale = true ;
  double height = 150;
  int age = 10;
  int weight = 50;




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.indigo,
         title: const Text('BMI CALCULATOR',
           style: TextStyle(
             fontWeight: FontWeight.bold,
           ),
         ),
       ) ,
      body:  Column(
        children:
        [

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap:()
                      {
                        setState(()
                        {
                          isMale = true;

                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.grey : Colors.indigo,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Image(
                               image:AssetImage('images/male_icon.png'),
                             height: 100.0,
                             width: 100.0,
                           ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap:()
                      {
                        setState(()
                        {
                          isMale = false;

                        });
                      } ,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale ? Colors.grey : Colors.indigo,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image:AssetImage('images/female_icon.png'),
                              height: 100.0,
                              width: 100.0,
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              "female",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ), // DONE YA NE-GEM 1
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.indigo,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children:
                  [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.white
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic ,
                      children:
                      [
                        Text(
                          "${height.round()}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40.0,
                              color: Colors.white,
                          ),
                        ),
                        Text(
                          "CM",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                              color: Colors.white,
                          ),
                        ),

                      ],
                    ),
                    Slider(
                        value:height,
                        max:250 ,
                        min: 90 ,
                        onChanged:
                          (value)
                        {
                         setState(() {
                           height = value;
                         });
                        }
                    )
                  ],
                ),
              ),
            ) ,
          ), // DONE YA NE-GEM 2
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.indigo,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30.0,
                              color: Colors.white,

                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "${age.round()}",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40.0,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                   mini: true,
                                heroTag: 'age--',
                                child: Icon(
                                    Icons.remove,
                                  ) ,
                              ),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                heroTag: 'age++',

                                child: Icon(
                                  Icons.add,
                                ) ,
                              ),


                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.indigo,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30.0,
                              color: Colors.white,

                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "${weight.round()}",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40.0,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children:
                            [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                mini: true,
                                heroTag: 'weight--',

                                child: Icon(
                                  Icons.remove,
                                ) ,
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                mini: true,
                                heroTag: 'weight++',

                                child: Icon(
                                  Icons.add,
                                ) ,
                              ),


                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color:Colors.indigo ,
            child: MaterialButton(
                onPressed: (){
                  double result = weight / pow(height/100,2);
                  print(result.round());
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder:(context)=> result_screen(
                            age:age,
                            result: result,
                            isMale: isMale,
                          ),
                      ),
                  );

                },
              child: const Text(
                'calculate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),

              ),
            ),
          ),
        ],
      ) ,
    );
  }
}
