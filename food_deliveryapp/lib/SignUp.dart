import 'package:flutter/material.dart';
import 'package:food_deliveryapp/LoginPage.dart';
import 'Colors.dart';
import 'package:food_deliveryapp/Widgets/Button.dart';
import 'package:food_deliveryapp/Widgets/TextFormField.dart';
import 'package:food_deliveryapp/Widgets/SignUPForm.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliveryapp/Widgets/LoginForm.dart';
import 'LoginPage.dart';

// This code is for a Sign Up page but before we use it you can put it in showGeneralDialog
// To avoid the overflow of the bottom i added in the scaffodld this line :          resizeToAvoidBottomInset: false,
// When this property is set to true (which is the default), the Flutter framework automatically resizes the widget tree when the on-screen keyboard is shown or hidden. 
//When this property is set to false, the widget tree doesn't automatically resize when the on-screen keyboard appears or disappears. 
// i add also an animation  when the textFields are empty or when the user enter his informations correctly

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 620,
        //width:302,
        margin: EdgeInsets.symmetric(horizontal: 26),
        decoration: BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    SvgPicture.asset(
                      'images/SignDeco.svg',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: AppColor.textColor,
                            fontFamily: 'poppins3',
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130),
                      child: SignForm(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Or Sign Up With',
                  style: TextStyle(
                    color: AppColor.textColor,
                    fontFamily: 'poppins2',
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('google');
                        },
                        child: SvgPicture.asset(
                          'images/google.svg',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('instagram');
                        },
                        child: SvgPicture.asset(
                          'images/instagram.svg',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('facebook');
                        },
                        child: SvgPicture.asset(
                          'images/facebook.svg',
                          width: 32,
                          height: 32,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    children: [
                      Text(
                        'Do you have already an account ?',
                        style: TextStyle(
                          color: Color(0xff263238),
                          fontFamily: 'poppins4',
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('log in ');
                          showGeneralDialog(
                              barrierDismissible:
                                  true, // this is used to close dialog when we click outside
                              barrierLabel: 'Sign Up',
                              context: context,
                              pageBuilder: (context, _, __) {
                                return LoginPage();
                              });
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontFamily: 'poppins1',
                            fontSize: 14,
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
      ),
    );
  }
}
