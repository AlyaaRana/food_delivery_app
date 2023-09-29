import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/items.dart';
import 'package:food_delivery_app/screens/view/detail_page.dart';

class FoodList extends StatelessWidget {
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
            child: Stack(
              children: [
                // Positioned(
                //   top: 0,
                //   left: 0,
                //   right: 0,
                //   child: Image.asset(
                //     foodItem.image,
                //     height: 90.0,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                Container(
                  width: 155.0,
                  height: 162.0,
                  decoration: BoxDecoration(
                    color: foodItem.bgColor,
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
                                alignment: Alignment.center, // Mengatur teks ke tengah
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
                            InkWell(
                              onTap: () {
                                // Tambahkan logika favorit di sini
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white, // Warna latar belakang tombol
                                  shape: BoxShape.circle, // Membuat tombol menjadi lingkaran
                                ),
                                child: Icon(
                                  Icons.favorite, // Ikon keranjang
                                  color: Colors.black, // Warna ikon
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],

            ),
          );
        }).toList(),
      ),
    );
  }
}
