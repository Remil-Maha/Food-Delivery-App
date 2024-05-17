import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliveryapp/Categories.dart';
import 'package:food_deliveryapp/RecomandWidgets.dart';
import 'package:food_deliveryapp/TheDishDetails.dart';
//import 'package:like_button/like_button.dart';
import 'Colors.dart';
import 'TitleHomePage.dart';
import 'SearchBar.dart';
import 'LikedButton.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'Categories.dart';
import 'favorite.dart';
import 'PopularNow.dart';
import 'HomePage_finalVersion.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    PopularNow(),
    favorite(),
    PopularNow(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(
          milliseconds: 600,
        ),
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
          backgroundColor: Colors.transparent,
          height: 50,
          color: Color.fromARGB(255, 246, 125, 125),
          
          items: [
            SvgPicture.asset(
              'images/home.svg',
              height: 15,
              width: 15,
              color: AppColor.textColor2,
            ),
            SvgPicture.asset(
              'images/card.svg',
              height: 15,
              width: 15,
              color: AppColor.textColor2,
            ),
            SvgPicture.asset(
              'images/fullHeart.svg',
              height: 15,
              width: 15,
              color: AppColor.textColor2,
            ),
            SvgPicture.asset(
              'images/person.svg',
              height: 15,
              width: 15,
              color: AppColor.textColor2,
            ),
          ]),
    );
  }
}