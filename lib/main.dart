import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/color.dart';
import 'package:food_delivery_app/model/items.dart';
import 'package:food_delivery_app/screens/profile.dart';
import 'package:food_delivery_app/screens/view/cart.dart';
import 'package:food_delivery_app/screens/view/favorite.dart';
import 'package:food_delivery_app/screens/view/home_page.dart';
import 'package:food_delivery_app/screens/login.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_delivery_app/screens/view/notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _page = 0;
  final pages = [
    HomePage(),
    FavoriteFood(favoriteItems: food,),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: CurvedNavigationBar(
            index: 0,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 400),
            items: <Widget>[
              Icon(Icons.home, size: 30),
              Icon(Icons.favorite, size: 30),
              Icon(Icons.person, size: 30),
            ],
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          ),
        ),
        body: pages[_page],
      ),
    );
  }
}
