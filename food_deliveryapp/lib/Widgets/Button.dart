import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_deliveryapp/Colors.dart';
class SignButton extends StatelessWidget {
  const SignButton({required this.width,
  required this.height,
  required this.text,
  });
     final double width;
     final double height;
     final String text;
    
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        print('maha');
      }  ,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        minimumSize: Size(this.width, this.height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),

        ),
      ),
      child:Text(
        this.text,
        style: TextStyle(
          color:AppColor.textColor2 ,
          fontFamily: 'poppins2' ,
          fontSize:16 ,
        ),

      ) ,
        );
  }
}