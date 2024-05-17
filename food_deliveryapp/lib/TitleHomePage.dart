import 'package:flutter/material.dart';

import 'Colors.dart';
class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
        color: AppColor.textColor,
        fontFamily: 'poppins1',
        fontSize: width * 0.04,
      ),
    );
  }
}