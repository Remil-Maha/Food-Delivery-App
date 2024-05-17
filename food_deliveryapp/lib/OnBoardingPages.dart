import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliveryapp/Colors.dart';
//import 'package:food_deliveryapp/HomePage.dart';
import 'OnBoardingLists.dart';
import 'HomePage_finalVersion.dart';
import 'MainScreens.dart';
import 'SignUp.dart';
import 'package:food_deliveryapp/Widgets/Button.dart';
import 'package:food_deliveryapp/Widgets/TextFormField.dart';
import 'package:food_deliveryapp/Widgets/SignUPForm.dart';

class OnBoardingPage extends StatefulWidget {
  State<StatefulWidget> createState() => _OnBoardingPage();
}

class _OnBoardingPage extends State<StatefulWidget> {
  int currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  Container dotIndecator(index, context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(right: width * 0.01),
      height: height * 0.01,
      width: width * 0.026,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xffF54748) : Color(0xffF7B8B9),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: OnBoardingContents.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    if (currentPage == 0 || currentPage == 1)
                      Container(
                        padding: EdgeInsets.only(
                            top: height * 0.03, left: width * 0.8),
                        child: GestureDetector(
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: Color(0xffF54748),
                              fontFamily: "poppins4",
                              fontSize: width * 0.05,
                            ),
                          ),
                          onTap: () {
                            _pageController.animateToPage(
                              OnBoardingContents.length - 1,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                        ),
                      ),
                    SizedBox(
                      height: height * 0.15,
                    ),
                    Container(
                      child: SvgPicture.asset(
                        OnBoardingContents[index].image,
                      ),
                      width: width * 0.81,
                      height: height * 0.37,
                    ),
                    SizedBox(height: height * 0.04),
                    Container(
                      child: Text(
                        OnBoardingContents[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffF14647),
                          fontFamily: 'poppins3',
                          fontSize: width * 0.06,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: Text(
                        OnBoardingContents[index].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "poppins2",
                          fontSize: 16,
                          color: Color(0xff2E2E2E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  currentPage == OnBoardingContents.length - 1
                      ? ElevatedButton(
                          onPressed: () {
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
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primaryColor,
                            minimumSize: Size(300, 56),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: AppColor.textColor2,
                              fontFamily: 'poppins2',
                              fontSize: 19,
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: List.generate(OnBoardingContents.length,
                                  (index) => dotIndecator(index, context)),
                            ),
                            SizedBox(width: width * 0.55),
                            InkWell(
                              child: Container(
                                child: SvgPicture.asset(
                                  "images/arrowonBoard.svg",
                                ),
                              ),
                              onTap: () {
                                _pageController.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut);
                              },
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
