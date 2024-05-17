import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'OnBoardingPage1.dart';
import 'onBoardingPage2.dart';

class OnBoardingPage3 extends StatefulWidget {
  State<StatefulWidget> createState() => _OnBoardingPageState3();
}
class _OnBoardingPageState3 extends State<OnBoardingPage3> {
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'On Boarding Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        body: SafeArea(
          child:Center(
              child: Column(
              children: [
               Container(
                padding: EdgeInsets.only(top: height*0.16),
                child:SvgPicture.asset(
                  'images/onBoarding3.svg',
                  width: width*0.89,
                  height: height*0.3,
                ),
               ),
              SizedBox(height:height*0.04),
              Container(
                child: Text(
                  'Lightning Fast Delivery ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffF54748),
                    fontFamily: "poppins3",
                    fontSize: width*0.06,
                  ),
                ),
              ),
           SizedBox(height:height*0.03),
              Container(
               padding: EdgeInsets.symmetric(horizontal: width*0.03),
                child: Text(
                  "We serve up speed on a platter. Hungry? We'll have your food at your door before you can say ""yum!"" Our turbocharged delivery gets your favorite dishes to you in record time",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff2E2E2E),
                    fontFamily: "poppins2",
                    fontSize: width*0.038,                  
                    ),
                ),
              ),
              SizedBox(height:height*0.06),
              Container(
                child: SvgPicture.asset(
                  "images/3Points3.svg",
                ),
              ),
              SizedBox(height:height*0.06),
              Container(
                margin: EdgeInsets.symmetric(horizontal: width*0.04),
                height: height*0.07,
                width: double.infinity,
                alignment: Alignment.center,         
                      decoration: BoxDecoration(
                        color: Color(0xffF54748),
                        borderRadius:BorderRadius.circular(width*0.02) ,
                      ),
                      child:GestureDetector(
                        onTap: (){},
                        child: Text(
                        "Get Started",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily:"poppins2" ,
                          fontSize: width*0.063,
                        ),
                      
                  
                  ),
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