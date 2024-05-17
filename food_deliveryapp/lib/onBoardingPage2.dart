import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'OnBoardingPage1.dart';
import 'OnBoardingPage3.dart';


class OnBoardingPage2 extends StatefulWidget{
  State<StatefulWidget> createState()=> _onBoardingPage2();
}
class _onBoardingPage2 extends State <StatefulWidget> {
   Widget build(BuildContext context){
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'On Boarding Page ',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        body: SafeArea(
          child: Center 
          (child :
          OnBoardingMethod(
          image:"images/OnBoarding2.svg" ,
          title: "Payment at Warp Speed ",
          description:
          "We believe in the power of quick transactions. Our payment process is lightning-fast, ensuring that you can finalize your order in a blink. " ,
          points:  "images/3Points2.svg",
          navigateToPage: navigateToNextPage,
          ),

          ),

        ),
      ),
    );
    }
}
void navigateToNextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OnBoardingPage3()),
    );
  }