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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  List PopularNowImages = [
    'burgerPhoto',
    'numero2',
    'numero1',
    'numero3',
    'numero3',
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
  final List<Widget> _screens = [
    HomePage(),
    PopularNow(),
    favorite(),
    PopularNow(),
  ];
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
          GestureDetector(
            onTap: () {
              print('fadwa');
            },
            child: Container(
              padding: EdgeInsets.only(right: width * 0.03),
              child: SvgPicture.asset(
                'images/NotificationHome.svg',
                width: width * 0.073,
                height: height * 0.03,
              ),
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
                  EdgeInsets.only(top: height * 0.00125, right: width * 0.79),
              child: Text(
                'Hi,Maha',
                style: TextStyle(
                    fontFamily: 'poppins2',
                    fontSize: 14,
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
                        fontSize: 14,
                        color: AppColor.textColor),
                  ),
                  Text(
                    'Hungry ?',
                    style: TextStyle(
                        fontFamily: 'poppins2',
                        fontSize: 14,
                        color: AppColor.textColor),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: width * 0.03),
              decoration: BoxDecoration(
                color: const Color(0xffECECEC),
                borderRadius: BorderRadius.circular(width * 0.02),
              ),
              child: Container(
                padding: EdgeInsets.only(bottom: 4),
                child: TextField(
                  style: TextStyle(
                    color: AppColor.textColor,
                    fontSize: 13,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Container(
                      padding: EdgeInsets.only(top: 2),
                      child: Icon(
                        Icons.search,
                        size: 19,
                      ),
                    ),
                    prefixIconColor: AppColor.primaryColor,
                    border: InputBorder.none,
                  ),
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
              Thedestination: CategoriesWidget(),
            ),
            SizedBox(
              height: height * 0.001,
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodOffers.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print('remil maha');
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 0.5),
                      //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      padding:
                          EdgeInsets.only(right: 9, left: 5, top: 2, bottom: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('images/${foodOffers[index]}.png'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            TitlesHome(
              TheTilte: "Categories",
              Thewidth: 18,
              Thedestination: CategoriesWidget(),
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
              Thewidth: 0.2,
              Thedestination: PopularNow(),
            ),
            SizedBox(
              height: height * 0.003,
            ),
            SizedBox(
              height: height * 0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: PopularNowImages.length,
                itemBuilder: (context, index) {
                return Container(
                  width: width * 0.42,
                    margin: EdgeInsets.only(
                        left: width * 0.035, right: width * 0.05),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 7     ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //The rate box + the like
                            children: [
                              // The rate box 
                              Container(
                               width: width * 0.083,
                                height: height * 0.01875,
                                decoration: BoxDecoration(
                                  color: Color(0xffD9D9D9).withOpacity(0.44),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'images/Star.svg',
                                        width:7.84 ,
                                        height: 7.84,
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
                              ),
                              GestureDetector(
                                onTap: () {
                                  print('ddiofdf');
                                },
                                child: SvgPicture.asset(
                                  'images/fullHeart.svg',
                                  width: 10,
                                  height: 10,
                                ),
                              )
                            ],
                          ),
                          // The food Photo
                          Container(
                            child: GestureDetector(
                            onTap: () {
                              print('ou est ton papa , desolee');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DishDetails(
                                    ImagePath: PopularNowImages[index],
                                    DishName: PopularNowNames[index],
                                    Price: PopularPrices[index],
                                    rate: PopularRate[index],
                                  ),
                                ),
                              );
                              //
                            },
                            child: Image.asset(
                              'images/${PopularNowImages[index]}.png',
                              width: width * 0.32,
                              height: height * 0.1025,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        // The food informations
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                PopularNowNames[index],
                                style: TextStyle(
                                  color: AppColor.textColor,
                                  fontFamily: 'poppins3',
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                PopularNowDescription[index],
                                style: TextStyle(
                                  color: AppColor.textColor,
                                  fontSize: 8,
                                  fontFamily: 'Poppins4',
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: '${PopularPrices[index]}',
                                        style: TextStyle(
                                          color: AppColor.textColor,
                                          fontFamily: 'poppins3',
                                          fontSize: 11,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' DA',
                                        style: TextStyle(
                                          color: AppColor.primaryColor,
                                          fontFamily: 'poppins3',
                                          fontSize: 11,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  
                                  GestureDetector(
                                    onTap: () {
                                      print('maha maha');
                                    },
                                    child: SvgPicture.asset(
                                      'images/Plus.svg',
                                      width: 13,
                                      height: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ],
                      ),
                    ),
                );},
              
              ),
            ),
            // Recommanded for you section
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: width * 0.48),
                  child: Text(
                    'Recomanded For You',
                    style: TextStyle(
                      color: AppColor.textColor,
                      fontFamily: 'poppins1',
                      fontSize: width * 0.04,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.003,
            ),
            Container(
              height: 170,
              child: Recomanded(),
            ),
          ],
        ),
      )),
     
    );
  }
  /* bool isLiked = false; // Declare this variable somewhere in your code.

  void handleLikeButtonTap() {
    // Toggle the liked state
    isLiked = !isLiked;
    // Perform any other actions or logic you want when the LikeButton is tapped.
  }*/
}

class TitlesHome extends StatelessWidget {
  const TitlesHome({
    //super.key,
    required this.TheTilte,
    required this.Thewidth,
    required this.Thedestination,
  });

  final String TheTilte;
  final double Thewidth;
  final Widget Thedestination;
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Thedestination),
              );
            },
          ),
        ),
      ],
    );
  }
}
