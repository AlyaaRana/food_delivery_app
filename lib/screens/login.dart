import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home_page.dart';
import '../controller/user_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            UserInput(
              controller: emailController,
              labelText: "Email",
            ),
            UserInput(
              controller: passwordController,
              labelText: "Password",
              isPassword: true,
            ),
            BlackButton(
              onPressed: () {
                final email = emailController.text;
                final password = passwordController.text;
                if (email.isEmpty || password.isEmpty) {
                  // Validasi isian kosong
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Error"),
                        content: Text("Email dan kata sandi tidak boleh kosong."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                } else if (email == "user@example.com" && password == "password") {
                  setState(() {
                    isLoggedIn = true;
                  });
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                } else {
                  // Validasi login gagal
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Error"),
                        content: Text("Email atau kata sandi salah."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              text: 'Login',
            ),
            if (isLoggedIn) Text("Logged in successfully!"),
          ],
        ),
      ),
    );
  }
}
