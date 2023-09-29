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
            ButtonSearch(),
            SizedBox(height: 10),
            Promote(),
            SizedBox(height: 10),
            Text(
              "Category",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            categoryMenu(),
            SizedBox(height: 30,),
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

  // Widget categoryMenu() {
  //   final filteredCakes = filterCakesByCategory(selectedCategory);
  //
  //   return Container(
  //     height: 80.0,
  //     child: ListView.builder(
  //       physics: BouncingScrollPhysics(),
  //       scrollDirection: Axis.horizontal,
  //       itemCount: categories.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         final category = categories[index];
  //         return GestureDetector(
  //           onTap: () {
  //             setCategory(category.name); // Atur kategori yang dipilih
  //           },
  //           child: CategoryButton(
  //             category: category,
  //             index: category.name == selectedCategory ? index : -1,
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

}
