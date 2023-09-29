import 'package:flutter/material.dart';

class Promote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffffc6ac),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0,left: 10.0), // Atur sesuai kebutuhan Anda
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "Make Your First\n"),
                    TextSpan(text: "Order and Get"),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.red, width: 2.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "50% OFF",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 5,
          right: 0,
          child: Image.asset(
            "assets/image/pizza_home.png",
            width: 70,
            height: 135,
          ),
        ),
      ],
    );
  }
}
