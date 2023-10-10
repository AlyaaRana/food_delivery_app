import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/items.dart';

class FavoriteFood extends StatelessWidget {
  final List<Food> favoriteItems;

  FavoriteFood({required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return favoriteItems.isEmpty
        ? Center(
      child: Text(
        'Anda tidak menambahkan apapun.',
        style: TextStyle(fontSize: 18),
      ),
    )
        : ListView.builder(
      itemCount: favoriteItems.length,
      itemBuilder: (context, index) {
        final foodItem = favoriteItems[index];
        return ListTile(
          title: Text(foodItem.name)
        );
      },
    );
  }
}

