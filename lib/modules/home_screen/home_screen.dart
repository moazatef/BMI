// ignore_for_file: prefer_const_constructors,camel_case_types, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

        elevation: 30.0,
        backgroundColor:Colors.red,
        leading: Icon(
          Icons.menu,
        ),
        title:Text(
          'Better call Saul '
        ),
        actions: [
          IconButton(onPressed: IconButtonSearch, icon:
          Icon(Icons.search,
          ),),
        ],
      ) ,
      body:Container(
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(20.0),
        ) ,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children:
            [
              SizedBox(
                width: 300.0,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(image:NetworkImage('https://preview.redd.it/better-call-saul-season-6-poster-v0-9g6fey469lm81.jpg?width=640&crop=smart&auto=webp&s=bef3f1fc7cddab47bb8a9769c0c9a04f7dd87fd9'
                    ),
                      width: 300.0,
                      height:300.0,
                      fit:BoxFit.cover ,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.black,
                      child: Text('Saul goodman',
                        textAlign:TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


 void IconButtonSearch()
 {
   print("Search clicked");
 }
}