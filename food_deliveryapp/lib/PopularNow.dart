import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Colors.dart';
import 'TheDishDetails.dart';
class PopularNow extends StatefulWidget {
  const PopularNow({super.key});

  @override
  State<PopularNow> createState() => _PopularNowState();
}

class _PopularNowState extends State<PopularNow> {
   List PopularNowNames = [
    "Beef Burger",
    "King Pizza",
    "Cheese Burger",
    "Chicken Salad",
    "Grenade Mint Juice",
    "Beef Burger",
    "King Pizza",
    "Cheese Burger",
  ];
  List PopularNowImages = [
    'burgerPhoto',
    'numero2',
    'numero1',    
    'numero3',
    'numero3',
     'burgerPhoto',
    'numero2',
    'numero1', 
  ];
  List PopularNowDescription = [
    "Double beef",
    "Vegetables , Meat ,Mushrooms",
    "Cheese + Meat",
    "Chicken , Tomatto, Lettuce",
    "Grenade , Mint",
     "Double beef",
    "Vegetables , Meat ,Mushrooms",
    "Cheese + Meat",
  ];
  List<double> PopularPrices = [
    1000,
    900,
    1000,
    650,
    550,
      1000,
    900,
    1000,
  ];
  List<double> PopularRate = [
    4.9,
    4.5,
    4.6,
    4.8,
    4.6,
     4.9,
    4.5,
    4.6,
  ];
  @override
  Widget build(BuildContext context) {
    // in this code um going to use the grid view
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            print('maha fatima zohra');
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(top: 12),
            child: Image.asset(
              'images/Arrow.png',
            ),
          ),
        ),
        title: Container(
          padding: EdgeInsets.only(left: 55, top: 11),
          child: Text(
            'Popular Now',
            style: TextStyle(
              color: AppColor.textColor,
              fontFamily: 'poppins1',
              fontSize: 23,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(right: 20, bottom: 20, left: 20, top: 10),
                child: GridView.builder(
                   physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2,
                      crossAxisSpacing:15,
                      mainAxisSpacing: 15, ),
                      itemCount: 8,
                       itemBuilder: (_, index){
                        return Container(
                  width: 140,
                  height: 147,

                   
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
                );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
