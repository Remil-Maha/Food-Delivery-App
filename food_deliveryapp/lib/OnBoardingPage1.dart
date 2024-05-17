import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'onBoardingPage2.dart';
import 'onBoardingPage3.dart';

class OnBoarding extends StatefulWidget {
  State<StatefulWidget> createState() => _onBoardingPageState();
}

class _onBoardingPageState extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'On Boarding Page ',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        body: SafeArea(
          child: Center(
            child: OnBoardingMethod(
              image: "images/onBoarding.svg",
              title: "Culinary Marvels Delivered",
              description:
                  "Our delivery heroes are on a mission to bring you culinary marvels. With the utmost care and precision, they ensure that your food arrives fresh, hot, and ready to tantalize your taste buds.",
              points: "images/3Points1.svg",
              navigateToPage: navigateToNextPage,
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoardingMethod extends StatelessWidget {
  const OnBoardingMethod({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.points,
    required this.navigateToPage,
  });

  final String image, title, description, points;
  final Function(BuildContext) navigateToPage;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(children: [
      Container(
        padding: EdgeInsets.only(top: height * 0.03, left: width * 0.8),
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OnBoardingPage3()));
          },
        ),
      ),
      SizedBox(height: height * 0.1),
      Container(
        child: SvgPicture.asset(
          image,
          width: width * 0.81,
          height: height * 0.37,
        ),
      ),
      SizedBox(height: height * 0.04),
      Container(
        child: Text(
          title,
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
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "poppins2",
            fontSize: width * 0.038,
            color: Color(0xff2E2E2E),
          ),
        ),
      ),
      SizedBox(height: height * 0.07),
      Container(
        padding: EdgeInsets.symmetric(
            horizontal:
                width * 0.04), // Adjust the horizontal padding as needed
        child: Row(
          children: [
            Expanded(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center, // Align children at the start and end of the row
                children: [
                  Container(
                    child: SvgPicture.asset(
                      points,
                    ),
                  ),
                  SizedBox(width: width * 0.7),
                  InkWell(
                    child: Container(
                      child: SvgPicture.asset(
                        "images/arrowonBoard.svg",
                      ),
                    ),
                    onTap: () {
                      navigateToPage(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

void navigateToNextPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => OnBoardingPage2()),
  );
}
