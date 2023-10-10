import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/items.dart';

class CartPage extends StatelessWidget {
  final List<Food> cartItems;

  CartPage({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Belanja'),
      ),
      body: cartItems.isEmpty
          ? Center(
        child: Text(
          'Anda tidak menambahkan apapun.',
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final foodItem = cartItems[index];
          return ListTile(
            title: Text(foodItem.name),
          );
        },
      ),
    );
  }
}
