import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;

  const UserInput({
    Key? key,
    required this.controller,
    required this.labelText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextField(
          controller: widget.controller,
          keyboardType: TextInputType.emailAddress,
          obscureText: isObscure && widget.isPassword,
          decoration: InputDecoration(
            labelText: widget.labelText,
            border: UnderlineInputBorder(),
            suffixIcon: widget.isPassword
                ? InkWell(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(
                isObscure ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
            )
                : null,
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}

class BlackButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const BlackButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(18.0),
        elevation: 0,
      ),
    );
  }
}