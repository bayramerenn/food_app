import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/contants.dart';
import 'package:food_app/widgets/category_title.dart';
import 'package:food_app/widgets/food_card.dart';

import 'details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          textTheme: TextTheme(
            headline5: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(fontWeight: FontWeight.bold),
            headline6: TextStyle(fontWeight: FontWeight.bold),
            bodyText2: TextStyle(color: kTextColor),
          )),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20, top: 50),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    "assets/icons/menu.svg",
                    height: 11,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Simple way to find \nTasty food",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: CategoryTitle(),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(right: 20, left: 20, top: 5),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kBorderColor),
                ),
                child: SvgPicture.asset("assets/icons/search.svg"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodCard(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DetailsScreen();
                          }),
                        );
                      },
                      title: "Vegan salad bowl",
                      image: "assets/images/image_1.png",
                      price: 20,
                      calories: "420Kcal",
                      description:
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                    ),
                    FoodCard(
                      press: () {},
                      title: "Vegan salad bowl",
                      image: "assets/images/image_2.png",
                      price: 20,
                      calories: "420Kcal",
                      description:
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.26),
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),
      ),
    );
  }
}
