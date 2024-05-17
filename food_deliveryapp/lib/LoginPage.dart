import 'package:flutter/material.dart';
import 'Colors.dart';
import 'package:food_deliveryapp/Widgets/Button.dart';
import 'package:food_deliveryapp/Widgets/TextFormField.dart';
import 'package:food_deliveryapp/Widgets/SignUPForm.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliveryapp/Widgets/LoginForm.dart';
import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      padding: const EdgeInsets.only(top: 60),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: AppColor.textColor,
                            fontFamily: 'poppins3',
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 160),
                      child: LoginForm(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Or Log In With',
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
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Row(
                    children: [
                      Text(
                        'Do not have an account ?',
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
                                return SignUpPage();
                              });
                        },
                        child: Text(
                          'Sign Up',
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
