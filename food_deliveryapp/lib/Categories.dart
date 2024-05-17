import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Colors.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});
  List ImagesCategories = [
    "leNUMERO1",
    "leNUMERO2",
    "leNumero3",
    "leNumero4",
    "leNumero5",
    "leNumero6",
    "leNumero7",
    "leNumero8",
  ];
  List CategoriesNames = [
    "Burger",
    "Pizza",
    "Meat",
    "Drinks",
    "Slad",
    "Pasta",
    "Sweats",
    "Sandwiches"
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        leading:GestureDetector(
          onTap: () {
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
          padding: EdgeInsets.only(left: 55, top: 15),
          child: Text(
            'Categories',
            style: TextStyle(
              color: AppColor.textColor,
              fontFamily: 'poppins1',
              fontSize: 23,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(right: 24, bottom: 24, left: 24, top: 15),
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      // mainAxisExtent: 200,
                    ),
                    itemCount: 8,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          print('mimi');
                        },
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Image.asset(
                                'images/${ImagesCategories[index]}.png',
                                height: 159,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 8, bottom: 5),
                                child: Text(
                                  CategoriesNames[index],
                                  style: TextStyle(
                                    color: AppColor.textColor2,
                                    fontFamily: 'poppins2',
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
