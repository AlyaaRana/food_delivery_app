import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/home/btn_cattegory.dart';
import 'package:food_delivery_app/model/category.dart';
import 'package:food_delivery_app/widget/home/btn_search.dart';
import 'package:food_delivery_app/widget/home/promote.dart';
import 'package:food_delivery_app/widget/list_food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;
  String selectedCategory = "All";

  void setCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ButtonSearch(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, size: 30.0),
                SizedBox(width: 16,),
                Text("NeaaOreaa",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(width: 16,),
                Icon(Icons.shopping_cart, size: 30,)
              ],
            ),
            CustomSearchBar(),
            SizedBox(height: 10),
            Promote(),
            SizedBox(height: 25),
            Text(
              "Category",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            categoryMenu(),
            SizedBox(height: 25),
            Text(
              "Popular",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            FoodList()
          ],
        ),
      ),
    );
  }

  Widget categoryMenu() {
    return Container(
      height: 80.0,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              setState(() => selectIndex = index);
            },
            child: CategoryButton(
              category: category,
              index: selectIndex,
            ),
          );
        },
      ),
    );
  }

}
