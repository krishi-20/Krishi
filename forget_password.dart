import 'dart:js_interop';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:ForgetPasswordScreen(),
  ));
}

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});          

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email'
              ),
            ),
            SizedBox(height: 40,),
            TextButton(onPressed: (){
              print('email will send on your enterd email Id');
            },
              child:Text(
              'forget Password',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
              ),

            ),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 20.2, vertical: 10.0),
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),),)),),

          ],
        ),
      ),
    );
  }
}
