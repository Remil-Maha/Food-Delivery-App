import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliveryapp/Colors.dart';

class TextFormFieldSign extends StatefulWidget {
  const TextFormFieldSign({
    required this.width,
    required this.height,
    required this.labletext,
    required this.iconpath,
    required this.paddingHorizontal,
    required this.obstructbool,

  });
  final double width;
  final double height;
  final String labletext;
  final String iconpath;
  final double paddingHorizontal;
  final bool obstructbool;

  @override
  State<TextFormFieldSign> createState() => _TextFormFieldSignState();
}

class _TextFormFieldSignState extends State<TextFormFieldSign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Color(0xffFCFBFB),
      ),
      child: TextFormField(
        
        obscureText: widget.obstructbool,
        decoration: InputDecoration(
            labelText: widget.labletext, // Example label
            labelStyle: TextStyle(
              color: Color(0xff455A64).withOpacity(0.8),
              fontSize: 14,
              fontFamily: 'poppins4',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide(
                color: Color(0xff455A64).withOpacity(0.55),
              ),
            ),
            prefixIcon: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: widget.paddingHorizontal),
              child: SvgPicture.asset(
                widget.iconpath,
                width: 15,
                height: 14,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 1)),
      ),
    );
  }
}
