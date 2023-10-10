import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/items.dart';
import 'package:food_delivery_app/screens/view/detail_page.dart';
import 'home/food_card.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<Food> favoriteItems = [];

  void toggleFavorite(Food food) {
    if (favoriteItems.contains(food)) {
      setState(() {
        favoriteItems.remove(food);
      });
    } else {
      setState(() {
        favoriteItems.add(food);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
        spacing: 20.0,
        runSpacing: 20.0,
        children: food.map((foodItem) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ),
              );
            },
            child: FoodCard(
              foodItem: foodItem,
              isFavorite: favoriteItems.contains(foodItem),
              onPressed: () {
                toggleFavorite(foodItem);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
