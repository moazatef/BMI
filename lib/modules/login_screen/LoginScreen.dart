// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:test2/shared/components/components.dart';

class LoginScreen extends StatelessWidget

{

    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    var formkey = GlobalKey<FormState>();

   LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        backgroundColor: Colors.indigo,

      ),
      body:  Padding(
        padding:const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight:FontWeight.bold,
                    ),

                  ),
                  const SizedBox(
                    height:40.0 ,
                  ),
                  defultFormFiled
                    (
                      emailController:TextEditingController(

                      ),
                      type:TextInputType.emailAddress
                  ),
                  const SizedBox(
                    height:20.0 ,
                  ),
                  TextFormField(
                    validator: ( value)
                    {
                      if(value!.isEmpty)
                        {
                          return ' password is empty';
                        }
                    },
                    controller: passwordcontroller,
                    obscureText:true,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value){
                      print(value);
                    },
                    decoration:const InputDecoration(
                      border:OutlineInputBorder(),
                      labelText:'Password',
                      suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIcon: Icon(Icons.lock),
                    ) ,
                  ),
                  const SizedBox(
                    height:20.0 ,
                  ),
                    defultcomponents
                      (
                      function: (){
                        if(formkey.currentState!.validate())
                          {
                            print(emailcontroller.text);
                            print(passwordcontroller.text);
                          }

                      },
                      text: "LOGIN",
                    ),
                  const SizedBox
              (
                    height:10.0 ,),
                   Row(children:
                  [
                    const Text('Don\'t have an account ?'),
                    TextButton(onPressed: (){}, child:
                      const  Text('Register now',
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                    )
                  ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
