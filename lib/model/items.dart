import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/color.dart';

class Food {
  final String name;
  final String image;
  final double price;
  final Color bgColor;
  final double rating;
  final int kal;
  final String category;

  Food({
    required this.name,
    required this.image,
    required this.price,
    required this.bgColor,
    required this.rating,
    required this.kal,
    required this.category
});
}

List<Food> food = [
  Food(
      name: "Cheeseburger",
      image: "assets/icons/burger.png",
      price: 2.3,
      bgColor: mainColor,
      rating: 4.5,
      kal: 285,
      category: "Burger & Pizza"
  ),Food(
      name: "Cheeseburger",
      image: "assets/icons/burger.png",
      price: 2.3,
      bgColor: mainColor,
      rating: 4.5,
      kal: 285,
      category: "Burger & Pizza"
  ),Food(
      name: "Cheeseburger",
      image: "assets/icons/burger.png",
      price: 2.3,
      bgColor: mainColor,
      rating: 4.5,
      kal: 285,
      category: "Burger & Pizza"
  ),Food(
      name: "Cheeseburger",
      image: "assets/icons/burger.png",
      price: 2.3,
      bgColor: mainColor,
      rating: 4.5,
      kal: 285,
      category: "Burger & Pizza"
  ),
];