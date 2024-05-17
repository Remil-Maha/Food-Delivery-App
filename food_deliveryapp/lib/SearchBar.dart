import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
   required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.03),
      decoration: BoxDecoration(
        color: const Color(0xffECECEC),
        borderRadius: BorderRadius.circular(width * 0.016),
      ),
      child: TextField(
        style: TextStyle(
          color: AppColor.textColor,
        ),
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          prefixIconColor: AppColor.primaryColor,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
