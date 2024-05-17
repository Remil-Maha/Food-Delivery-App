import 'package:flutter/material.dart';
import 'package:food_deliveryapp/Tests.dart';
//import 'package:food_deliveryapp/HomePage.dart';
import 'OnBoardingPage1.dart';
import 'OnBoardingPages.dart';
import 'HomePage_finalVersion.dart';
import 'Categories.dart';
import 'TheDishDetails.dart';
import 'PopularNow.dart';
import 'favorite.dart';
import 'package:firebase_core/firebase_core.dart';
Future <void> main () async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY FLUTTER FOOD DELIVERY APP',
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
      //home:Categories(),
     // home: DishDetails(),
     //home: PopularNow(),
    // home:favorite(),
    //home:Test(),
    );
  }
}
