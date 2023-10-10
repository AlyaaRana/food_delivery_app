import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/color.dart';

import '../../model/items.dart';
import '../btn_favorite.dart';


class FoodCard extends StatelessWidget {
  final Food foodItem;
  final bool isFavorite;
  final VoidCallback onPressed;

  FoodCard({
    required this.foodItem,
    required this.isFavorite,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 155.0,
          height: 162.0,
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    foodItem.name,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 58,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "\$${foodItem.price.toStringAsFixed(2)}",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: FavoriteButton(
                        isFavorite: isFavorite,
                        onPressed: onPressed,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 150,
          height: 120,
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              foodItem.image,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

