import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/items.dart';

import '../../widget/home/food_card.dart';

class FavoriteFood extends StatelessWidget {
  final List<Food> favoriteItems;

  FavoriteFood({required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Items'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          }
        )
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final foodItem = favoriteItems[index];
          return FoodCard(
            foodItem: foodItem,
            isFavorite: foodItem.isFavorite,
            onPressed: () {
            },
          );
        },
      ),
    );
  }
}

