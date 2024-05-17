import 'package:flutter/material.dart';
import 'package:food_deliveryapp/Widgets/Button.dart';
import 'package:food_deliveryapp/Widgets/TextFormField.dart';
import 'package:food_deliveryapp/Widgets/SignUPForm.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliveryapp/Colors.dart';
import 'SignUp.dart';
import 'LoginPage.dart';
class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: ElevatedButton(
                onPressed: (){
                  print('maha');
                                              showGeneralDialog(
                                    barrierDismissible:
                                        true, // this is used to close dialog when we click outside
                                    barrierLabel: 'Sign Up',
                                    transitionDuration: Duration(milliseconds: 400),
                                    transitionBuilder: (_, animation, __, child) {
                                      Tween<Offset> tween;
                                      tween = Tween(
                                          begin: const Offset(-1, 0),
                                          end: Offset.zero);
                                      return SlideTransition(
                                        position: tween.animate(CurvedAnimation(
                                            parent: animation,
                                            curve: Curves.easeInOut)),
                                        child: child,
                                      );
                                    },
                                    context: context,
                                    pageBuilder: (context, _, __) {
                                      return SignUpPage();
                                    });
                }  ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  minimumSize: Size(295, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                
                  ),
                ),
                child:Text(
                 'Firebase',
                  style: TextStyle(
                    color:AppColor.textColor2 ,
                    fontFamily: 'poppins2' ,
                    fontSize:16 ,
                  ),
                
                ) ,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}