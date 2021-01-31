import 'package:flutter/material.dart';

import '../contants.dart';

class CategoryTitle extends StatefulWidget {
  @override
  _CategoryTitleState createState() => _CategoryTitleState();
}

class _CategoryTitleState extends State<CategoryTitle> {
  List<Category> getCategoryAll = [
    Category(title: "All", isActive: true),
    Category(title: "Italian", isActive: false),
    Category(title: "Asian", isActive: false),
    Category(title: "Chinese", isActive: false),
    Category(title: "Burgers", isActive: false),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getCategoryAll.map((categories) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 30),
          child: InkWell(
            onTap: () {
              setState(() {
                getCategoryAll.forEach((element) {
                  if (element.title == categories.title) {
                    element.isActive = true;
                  } else {
                    element.isActive = false;
                  }
                });
              });
            },
            child: Text(
              categories.title,
              style: Theme.of(context).textTheme.button.copyWith(
                    color: categories.isActive
                        ? kPrimaryColor
                        : kTextColor.withOpacity(.4),
                  ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class Category {
  String title;
  bool isActive;

  Category({this.title, this.isActive});

  @override
  String toString() {
    return 'Category{title: $title, isActive: $isActive}';
  }
}
