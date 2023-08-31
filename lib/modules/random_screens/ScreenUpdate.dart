import 'package:flutter/material.dart';

class ScreenUpdate extends StatefulWidget {
   const ScreenUpdate({Key? key}) : super(key: key);

  @override
  State<ScreenUpdate> createState() => _ScreenUpdateState();
}

class _ScreenUpdateState extends State<ScreenUpdate> {
 int counter = 1;
 @override
 void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const  Text('Updated',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
      body: Center(
        child: Row(
          mainAxisSize:MainAxisSize.min ,
          children: [
            TextButton(
                onPressed: ()
                {
                 setState(() {
                   counter--;
                   print(counter);
                 });
                },
                child: const Text(
                  'MINUS',
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ) ,
                ),
            ),
            const SizedBox(
              width: 20.0,
            ),
             Text(
              '$counter',
              // ignore: prefer_const_constructors
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 70.0,
              ) ,
            ),
          const SizedBox(
              width: 20.0,
            ),
            TextButton(
              onPressed: ()
              {
                setState(() {
                  counter++;
                  print(counter);
                });
              },
              child: const Text(
                'PLUS',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ) ,
              ),
            ),
          ],

        ),
      ) ,


    );
  }
}
