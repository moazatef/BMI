// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';



class UserScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(
        id:1 ,
        name: 'Moaz Atef',
        phone: '01007867179' ,
    ),
    UserModel(
      id:2 ,
      name: 'yosef Atef',
      phone: '0106574179' ,
    ),
    UserModel(
      id:3 ,
      name: 'Ahmed Atef',
      phone: '01676867179' ,
    ),
    UserModel(
      id:4 ,
      name: 'Moaz Atef',
      phone: '01007867179' ,
    ),
    UserModel(
      id:5 ,
      name: 'yosef Atef',
      phone: '0106574179' ,
    ),
    UserModel(
      id:6 ,
      name: 'Ahmed Atef',
      phone: '01676867179' ,
    ),


  ];


   UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Users',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body:ListView.separated(
          itemBuilder:(context,index) =>  UserItemModel(users[index]) ,
          separatorBuilder:(context,index) => Container(
            width: double.infinity,
            color: Colors.grey,
            height: 1.0,

          ),
          itemCount: users.length,
      ),

    );
  }

  Widget UserItemModel(UserModel users) =>
      Padding(
        padding:  EdgeInsets.all(15.0),
        child:  Row(

          children: [
            CircleAvatar(
              child: Text('${users.id}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25.0,
                ) ,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${users.name}',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '${users.phone}',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

          ],
        ),
      );
}
