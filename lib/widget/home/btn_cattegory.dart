import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/category.dart';
import 'package:food_delivery_app/core/color.dart';

class CategoryButton extends StatelessWidget {
  final Categories category;
  final int index;
  const CategoryButton({
    Key? key,
    required this.category,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      margin: EdgeInsets.only(top: 25.0, right: 20.0),
      padding: index == category.id
          ? EdgeInsets.only(left: 5.0, right: 10.0)
          : EdgeInsets.symmetric(horizontal: 10.0),
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: index == category.id ? mainColor : mainColor,
      ),
      child: index == category.id
          ? Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Image.asset(
              category.image,
              height: 20.0,
            ),
          ),
          SizedBox(width: 15.0),
          Text(
            category.name,
          )
        ],
      )
          : Image.asset(
        category.image,
        height: 30.0,
      ),
    );
  }
}