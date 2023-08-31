import 'package:flutter/material.dart';

Widget defultcomponents({
  double width = double.infinity,
  Color background = Colors.indigo,
  required VoidCallback function,
  required String text,
  bool IsUpperCase  = true,
})=>Container(
  width:width,
  decoration: BoxDecoration(
    borderRadius:BorderRadius.circular(
        20.0),
    color: background,
  ),
  child: MaterialButton(
    onPressed: function,
    child: Text(
      IsUpperCase ? text.toUpperCase() : text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),

);


Widget defultFormFiled({
  required TextEditingController emailController,
  required TextInputType type ,
})=>TextFormField(
  validator: (value)
  {
    if(value!.isEmpty)
    {
      return'email is empty';
    }
  },
  controller: emailController ,
  keyboardType: type,
  onFieldSubmitted: (value) {
    print(value);
  },
  onChanged: (value){
    print(value);
  },
  decoration:const InputDecoration(
    border:OutlineInputBorder(),
    labelText:'Email',
    prefixIcon: Icon(Icons.email),
  ) ,
);