import 'package:flutter/material.dart';
import 'package:food_app/contants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  const FoodCard(
      {Key key,
      this.title,
      this.ingredient,
      this.image,
      this.price,
      this.calories,
      this.description,
      this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(.06),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                ),
              ),
            ),
            //images
            Positioned(
              top: 5,
              left: -40,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(.15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/image_1.png"),
                  ),
                ),
              ),
            ),
            //price
            Positioned(
              right: 10,
              top: 80,
              child: Text(
                "80 TL",
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: kPrimaryColor,
                    ),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vegan salad bowl",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text("With "),
                    SizedBox(height: 16),
                    Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      calories,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
