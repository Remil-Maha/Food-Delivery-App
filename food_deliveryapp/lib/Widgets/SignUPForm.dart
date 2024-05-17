import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_deliveryapp/Colors.dart';
import 'TextFormField.dart';
import 'Button.dart';
class SignForm extends StatefulWidget {
  const SignForm({
    super.key,
  });

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: Column(
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

            SizedBox(
              height: 20,
            ),

            // The textFormField of the phone number
            TextFormFieldSign(
                width: 270,
                height: 46,
                labletext: 'Phone number',
                iconpath: 'images/phonenumber.svg',
                paddingHorizontal: 14,
                obstructbool: false,),
            SizedBox(
              height: 26,
            ),
            SignButton(width: 270, height: 46, text: 'Sign Up',),
          ],
        ),
      ),
    );
  }
}