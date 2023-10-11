import 'package:flutter/material.dart';

class IconWithTextAndDivider extends StatelessWidget {
  final IconData iconData;
  final String text;
  final String routeName;
  IconWithTextAndDivider({
    required this.iconData,
    required this.text,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
          child: Row(
            children: [
              Icon(iconData, size: 25),
              SizedBox(width: 8),
              Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        SizedBox(height: 8),
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          height: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}

