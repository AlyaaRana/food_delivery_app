import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String labelText;
  final TextEditingController textController;

  InputText({
    required this.labelText,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10), // Spacer between label and text field
        Expanded(
          child: TextField(
            controller: textController,
          ),
        ),
      ],
    );
  }
}
