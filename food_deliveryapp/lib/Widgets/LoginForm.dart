import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_deliveryapp/Colors.dart';
import 'TextFormField.dart';
import 'Button.dart';
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormFieldSign(
                width: 270,
                height: 46,
                labletext: 'Username',
                iconpath: 'images/username.svg',
                paddingHorizontal: 13,
                obstructbool: false,),
            SizedBox(
              height: 20,
            ),

            // TextFormField of the email
            TextFormFieldSign(
                width: 270,
                height: 46,
                labletext: 'Email',
                iconpath: 'images/email.svg',
                paddingHorizontal: 13,
                obstructbool: false,),

            SizedBox(
              height: 20,
            ),
            // The textFormFiel of the password
            TextFormFieldSign(
                width: 270,
                height: 46,
                labletext: 'Password',
                iconpath: 'images/password.svg',
                paddingHorizontal: 14,
                obstructbool: true,),
             SizedBox(height: 2,),
            GestureDetector( 
              onTap: () {
                print('forgot the password');
              },
              child: Text(
                'Forgot the password?',
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontFamily: 'poppins4' ,
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            SignButton(width: 270, height: 46, text: 'Log In'),
          ],
        ),
      ),
    );;
  }
}