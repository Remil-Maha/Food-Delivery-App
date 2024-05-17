import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_deliveryapp/Colors.dart';

class DishDetails extends StatefulWidget {
  //const DishDetails({super.key});
  final String ImagePath;
  final String DishName;
  final double Price;
  final double rate;

  const DishDetails(
      {Key? key,
      required this.ImagePath,
      required this.DishName,
      required this.Price,
      required this.rate})
      : super(key: key);
  @override
  State<DishDetails> createState() => _DishDetailsState();
}

class _DishDetailsState extends State<DishDetails> {
  @override
  List Ingredients = [
    'Beef Patty',
    'Cheese',
    'Lettuce',
    'Tomato',
    'Red Onion',
    'Condiments',
    'Pickle',
  ];
  List IngredientsImages = [
    'BeefPatty',
    'cheese',
    'lettuce',
    'tomato',
    'onion',
    'condiments',
    'pickle',
  ];
  List ReviewsImages = [
    'photo1',
    'photo2',
    'photo3',
  ];
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFDCC71),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: SvgPicture.asset(
                        'images/backgroundFood.svg',
                      ),
                    ),
                    //Arrow buttom
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: GestureDetector(
                              onTap: () {
                                print('Esi the hell');
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                'images/Arrow.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 315,
                          ),
                          SvgPicture.asset(
                            'images/HeartDish.svg',
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.backgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 40, right: 15, left: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 85,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      color: AppColor.primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              print('moins');
                                            },
                                            child: SvgPicture.asset(
                                              'images/moins.svg',
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(
                                              color: AppColor.textColor2,
                                              fontFamily: 'poppins2',
                                              fontSize: 18,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              print('plus');
                                            },
                                            child: SvgPicture.asset(
                                              'images/plusP.svg',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      color: AppColor.primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              print('small');
                                            },
                                            child: Text(
                                              'S',
                                              style: TextStyle(
                                                color: AppColor.textColor2,
                                                fontFamily: 'poppins2',
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print('moyen');
                                            },
                                            child: Text(
                                              'M',
                                              style: TextStyle(
                                                color: AppColor.textColor2,
                                                fontFamily: 'poppins2',
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print('Large');
                                            },
                                            child: Text(
                                              'L',
                                              style: TextStyle(
                                                color: AppColor.textColor2,
                                                fontFamily: 'poppins2',
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //Category:
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 310, bottom: 2),
                              child: Text(
                                'Burger',
                                style: TextStyle(
                                  color: Color(0xff727A7E),
                                  fontFamily: 'poppins4',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      widget.DishName,
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontFamily: 'poppins4',
                                        fontSize: 18,
                                      ),
                                    ),
                                    /* Text(
                                      'Burger',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontFamily: 'poppins4',
                                        fontSize: 20,
                                      ),
                                    ),*/
                                  ],
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Chef: ',
                                          style: TextStyle(
                                            color: AppColor.primaryColor,
                                            fontFamily: 'poppins5',
                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Remil Maha',
                                          style: TextStyle(
                                            color: AppColor.black,
                                            fontFamily: 'poppins5',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // The Price
                                  RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: '${widget.Price}',
                                        style: TextStyle(
                                          color: AppColor.black,
                                          fontFamily: 'poppins4',
                                          fontSize: 20,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'DA',
                                        style: TextStyle(
                                          color: AppColor.primaryColor,
                                          fontFamily: 'poppins4',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TheRows(
                                      TheText: '${widget.rate}',
                                      TheSvgPath: 'images/Star.svg'),
                                  TheRows(
                                      TheText: '30-40 min',
                                      TheSvgPath: 'images/horloge.svg'),
                                  TheRows(
                                      TheText: '350 kcl',
                                      TheSvgPath: 'images/fire.svg'),
                                  TheRows(
                                      TheText: '350 kg',
                                      TheSvgPath: 'images/kg.svg'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 309),
                              child: Text(
                                'About ',
                                style: TextStyle(
                                  color: AppColor.black,
                                  fontFamily: 'poppins1',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Savor our delicious beef burger – a juicy, grilled patty made'
                                'from high-quality lean beef, topped with melted cheddar'
                                'cheese, fresh lettuce, ripe tomatoes, and sliced red onions.'
                                'Indulge in this classic favorite, bursting with flavor and satisfaction.',
                                style: TextStyle(
                                  color: AppColor.black,
                                  fontFamily: 'poppins4',
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 264),
                              child: Text(
                                'Ingredients',
                                style: TextStyle(
                                  color: AppColor.black,
                                  fontFamily: 'poppins1',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            // a List view of the ingredients
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizedBox(
                                height: 85,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: Ingredients.length,
                                    itemBuilder: ((context, index) {
                                      return Container(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Container(
                                                width: 63,
                                                height: 54,
                                                child: Center(
                                                  child: Image.asset(
                                                    'images/${IngredientsImages[index]}.png',
                                                    width: 54,
                                                    height: 41,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  color: AppColor.textColor2,
                                                  border: Border.all(
                                                    width: 2,
                                                    color: AppColor.primaryColor
                                                        .withOpacity(0.82),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              Ingredients[index],
                                              style: TextStyle(
                                                color: AppColor.black,
                                                fontSize: 10,
                                                fontFamily: 'poppins2',
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    })),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Reviews',
                                    style: TextStyle(
                                      color: AppColor.black,
                                      fontFamily: 'poppins1',
                                      fontSize: 16,
                                    ),
                                  ),
                                  GestureDetector(
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
                                ],
                              ),
                            ),
                            // The row of the reviews
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  for (int i = 0; i < ReviewsImages.length; i++)
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          print('photo bottom are working ');
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return BoxDialog(
                                                  ImageReview: ReviewsImages[i],
                                                );
                                              });
                                        },
                                        child: Image.asset(
                                          'images/${ReviewsImages[i]}.png',
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: GestureDetector(
                                      onTap: () {
                                        print('the bottom plus is working');
                                      },
                                      child: Image.asset(
                                        'images/review.png',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 37),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print('Add to cart');
                                    },
                                    child: Container(
                                      width: 151,
                                      height: 41,
                                      decoration: BoxDecoration(
                                        color: AppColor.textColor2,
                                        border: Border.all(
                                          color: Color(0xffF54748),
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Add To Cart',
                                          style: TextStyle(
                                            color: AppColor.black,
                                            fontFamily: 'poppins2',
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('Place order');
                                    },
                                    child: Container(
                                      width: 151,
                                      height: 41,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF54748),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Place Order',
                                          style: TextStyle(
                                            color: AppColor.textColor2,
                                            fontFamily: 'poppins2',
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 460),
                      child: Center(
                        child: Image.asset(
                          'images/${widget.ImagePath}.png',
                          width: 262,
                          height: 220,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TheRows extends StatelessWidget {
  const TheRows({
    //super.key,
    required this.TheText,
    required this.TheSvgPath,
  });

  final String TheText;
  final String TheSvgPath;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          this.TheSvgPath,
          width: 14,
          height: 15,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          this.TheText,
          style: TextStyle(
            color: AppColor.black,
            fontFamily: 'poppins2',
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class BoxDialog extends StatelessWidget {
  const BoxDialog({
    super.key,
    required this.ImageReview,
  });
  final String ImageReview;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: 305,
        height: 235,
        decoration: BoxDecoration(
          color: Color(0xffFFA8A7).withOpacity(0.81),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              //profile
              Row(
                children: [
                  //Profile photo
                  Image.asset(
                    'images/${this.ImageReview}.png',
                    width: 46,
                    height: 46,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  //profile informations
                  Column(
                    children: [
                      //PROFILE NAME
                      Text(
                        'Selena Gomez',
                        style: TextStyle(
                          color: AppColor.black,
                          fontFamily: 'poppins4',
                          fontSize: 14,
                        ),
                      ),
                      // Profile email
                      Text(
                        'ls_gomez@esi.dz',
                        style: TextStyle(
                          color: AppColor.black,
                          fontFamily: 'poppins5',
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Dish rating
                  SvgPicture.asset(
                    'images/rate.svg',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  //La date de publication
                  Text(
                    '24/06/2023',
                    style: TextStyle(
                      color: Color(0xff37474F),
                      fontFamily: 'poppins5',
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'I recently tried the beef burger from your '
                'menu, and it was absolutely delicious! The '
                'patty was cooked to perfection, juicy and '
                'lavorful.perfect toppings, and a fresh bun.'
                'Highly recommended!',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: AppColor.black,
                  fontFamily: 'poppins4',
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    'Did you find this review helpful ?',
                    style: TextStyle(
                      color: Color(0xff37474F),
                      fontFamily: 'poppins4',
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('like');
                    },
                    child: Container(
                      width: 50,
                      height: 21,
                      decoration: BoxDecoration(
                        color: Color(0xffCC8B8C),
                        border: Border.all(
                          color: AppColor.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadiusDirectional.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('images/like.svg'),
                            Text(
                              '(5)',
                              style: TextStyle(
                                color: Color(0xff1F272D),
                                fontFamily: 'poppins5',
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('dislike');
                    },
                    child: Container(
                      width: 50,
                      height: 21,
                      decoration: BoxDecoration(
                        color: Color(0xffCC8B8C),
                        border: Border.all(
                          color: AppColor.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadiusDirectional.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset('images/dislike.svg'),
                            Text(
                              '(1)',
                              style: TextStyle(
                                color: Color(0xff1F272D),
                                fontFamily: 'poppins5',
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
