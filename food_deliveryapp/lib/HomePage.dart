import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Colors.dart';
import 'TitleHomePage.dart';
import 'SearchBar.dart';

class HomePage extends StatefulWidget {
  //const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  List foodOffers = [
    "BurgerOffer",
    "PizzaOffer",
    "BurgerOffer",
    "thirdImage",
    "fourth",
  ];
  // these are all the lists for the Categories section
  List Categories = ["Burger", "Pizza", "Meat", "Salad", "Pasta"];
  List<Color> ColorsCategories = [
    AppColor.primaryColor,
    AppColor.ComplemantaryColor,
    AppColor.primaryColor,
    AppColor.ComplemantaryColor,
    AppColor.primaryColor,
  ];
  List SvgCategories = [
    "number1",
    "number2",
    "number3",
    "number4",
    "number5",
  ];
  List<Color> ColorText = [
    AppColor.textColor2,
    AppColor.textColor,
    AppColor.textColor2,
    AppColor.textColor,
    AppColor.textColor2,
  ];
  // these are all the lists of the Popular now section
  List PopularNowNames = [
    "Beef Burger",
    "King Pizza",
    "Cheese Burger",
    "Chicken Salad",
    "Grenade Mint Juice",
  ];
  List PopularNowDescription = [
    "Double beef",
    "Vegetables , Meat ,Mushrooms",
    "Cheese + Meat",
    "Chicken , Tomatto, Lettuce",
    "Grenade , Mint",
  ];
  List<double> PopularPrices = [
    1000,
    900,
    1000,
    650,
    550,
  ];
  List<double> PopularRate = [
    4.9,
    4.5,
    4.6,
    4.8,
    4.6,
  ];
  /*List PopularPng = [
    "numero1",
    "numero2",
    "numero3",
    "numero4",
    "numero5",
  ];*/
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        leading: Image.asset(
          'images/profilemini.png',
          width: width * 0.106,
          height: height * 0.04,
        ),
        title: Container(
          padding: EdgeInsets.only(left: width * 0.23),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, // Aligns children vertically in the center
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Padding(padding: EdgeInsets.only(left: width*0.9)),
              Row(
                children: [
                  SvgPicture.asset(
                    'images/Localisation.svg',
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    'Mascara',
                    style: TextStyle(
                        fontFamily: 'poppins4',
                        fontSize: width * 0.033,
                        color: AppColor.textColor),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Text(
                    'Algiers',
                    style: TextStyle(
                        fontFamily: 'poppins4',
                        fontSize: width * 0.033,
                        color: AppColor.textColor),
                  ),
                ],
              )
            ],
          ),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: width * 0.03),
            child: SvgPicture.asset(
              'images/NotificationHome.svg',
              width: width * 0.073,
              height: height * 0.03,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: height * 0.02, right: width * 0.75),
                child: Text(
                  'Hi,Maha',
                  style: TextStyle(
                      fontFamily: 'poppins2',
                      fontSize: width * 0.046,
                      color: AppColor.textColor),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: width * 0.03),
                child: Row(
                  children: [
                    Text(
                      'Are You ',
                      style: TextStyle(
                          fontFamily: 'poppins2',
                          fontSize: width * 0.046,
                          color: AppColor.textColor),
                    ),
                    Text(
                      'Hungry ?',
                      style: TextStyle(
                          fontFamily: 'poppins2',
                          fontSize: width * 0.046,
                          color: AppColor.textColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
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
              ),
              SizedBox(
                height: height * 0.02,
              ),
              // TitlesHome('Our Offers'),
              TitlesHome(
                TheTilte: "Our Offers",
                Thewidth: 20,
              ),
              SizedBox(
                height: height * 0.001,
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodOffers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 0.5),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('images/${foodOffers[index]}.png'),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.007,
              ),
              TitlesHome(
                TheTilte: "Categories",
                Thewidth: 18,
              ),
              SizedBox(
                height: height * 0.003,
              ),
              SizedBox(
                height: 75,
                child: GestureDetector(
                  onTap: () {
                    // Perform the desired action on a long press event
                    print('Long press detected!');
                  },
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 80,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        // padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: ColorsCategories[index],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              'images/${SvgCategories[index]}.svg',
                              width: 40,
                              height: 37,
                            ),
                            Text(
                              Categories[index],
                              style: TextStyle(
                                color: ColorText[index],
                                fontFamily: 'poppins3',
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TitlesHome(
                TheTilte: "Popular Now",
                Thewidth: 3,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: height * 0.2,
                child: GestureDetector(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: width * 0.42,
                        margin: EdgeInsets.only(
                            left: width * 0.04, right: width * 0.04),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.textColor2,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.09),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.026),
                              margin: EdgeInsets.only(top: height * 0.0125),
                              child: Row(
                                children: [
                                  Container(
                                    width: width * 0.083,
                                    height: height * 0.01875,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xffEEEEEE),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: width * 0.016),
                                          child: SvgPicture.asset(
                                            "images/Star.svg",
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.009,
                                        ),
                                        Text(
                                          '${PopularRate[index]}',
                                          style: TextStyle(
                                            fontFamily: 'poppins2',
                                            fontSize: 7,
                                            color: AppColor.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.26,
                                  ),
                                  Container(
                                      child: SvgPicture.asset(
                                          'images/fullHeart.svg')),
                                ],
                              ),
                            ),

                            // the food photo
                            Container(
                              margin: EdgeInsets.only(top: 0.5),
                              child: Image.asset(
                                'images/numero1.png',
                                width: width * 0.32,
                                height: height * 0.1025,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        PopularNowNames[index],
                                        style: TextStyle(
                                          color: AppColor.textColor,
                                          fontFamily: 'poppins3',
                                          fontSize: 8,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                      Text(
                                        PopularNowDescription[index],
                                        style: TextStyle(
                                          color: AppColor.textColor,
                                          fontSize: 6,
                                          fontFamily: 'Poppins4',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: [
                                          RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                text: '${PopularPrices[index]}',
                                                style: TextStyle(
                                                  color: AppColor.textColor,
                                                  fontFamily: 'poppins3',
                                                  fontSize: 10,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' DA',
                                                style: TextStyle(
                                                  color: AppColor.primaryColor,
                                                  fontFamily: 'poppins3',
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ]),
                                          ),
                                          /* SizedBox(
                                            width: 92,
                                          ),*/
                                          /* GestureDetector(
                                            onTap: () {
                                              print('maha maha');
                                            },
                                            child: SvgPicture.asset(
                                              'images/Plus.svg',
                                              width: 12,
                                              height: 12,
                                            ),
                                          ),*/
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                /* GestureDetector(
                  onTap: () {
                    // Perform the desired action on a long press event
                    print('Long press detected!');
                  },
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: Categories.length,
                    itemBuilder: (context, index) {
                      return 
                      Container(
                        width: width * 0.42,
                        //height: height*0.183,
                        margin: EdgeInsets.only(left: 12, right: 23.5),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: AppColor.textColor2,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.09),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 0.05, right: 1, left: 1),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisAlignment:
                                MainAxisAlignment.start, // Move elements up

                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                     
                                      width: width * 0.083,
                                      height: height * 0.01875,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xffEEEEEE),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: SvgPicture.asset(
                                              "images/Star.svg",
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                              fontFamily: 'poppins2',
                                              fontSize: 7,
                                              color: AppColor.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Container(
                                        // padding: EdgeInsets.only(right: 40),
                                        child: SvgPicture.asset(
                                            'images/fullHeart.svg')),
                                  ],
                                ),
                              ),
                              Image.asset(
                                'images/${PopularPng[index]}.png',
                                width: width * 0.32,
                                height: height * 0.1025,
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 95),
                                child: Text(
                                  PopularNowNames[index],
                                  style: TextStyle(
                                    color: AppColor.textColor,
                                    fontFamily: 'poppins3',
                                    fontSize: 8,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 105),
                                child: Text(
                                  PopularNowDescription[index],
                                  style: TextStyle(
                                    color: AppColor.textColor,
                                    fontSize: 6,
                                    fontFamily: 'Poppins4',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),*/
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitlesHome extends StatelessWidget {
  const TitlesHome({
    //super.key,
    required this.TheTilte,
    required this.Thewidth,
  });

  final String TheTilte;
  final double Thewidth;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: width * 0.45),
          child: Text(
            TheTilte,
            style: TextStyle(
              color: AppColor.textColor,
              fontFamily: 'poppins1',
              fontSize: width * 0.04,
            ),
          ),
        ),
        SizedBox(
          width: this.Thewidth,
        ),
        Container(
          child: GestureDetector(
            child: Text(
              "View All",
              style: TextStyle(
                color: Color(0xffF54748),
                fontFamily: "poppins5",
                fontSize: width * 0.03,
              ),
            ),
            onTap: () {
              print('hiba chaba');
            },
          ),
        ),
      ],
    );
  }
}
