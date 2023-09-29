import 'package:flutter/material.dart';

import '../controller/user_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

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
        padding:  EdgeInsets.all(16.0),
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
                if (email == "user@example.com" && password == "password") {
                  setState(() {
                    isLoggedIn = true;
                  });
                  // Navigasi ke halaman lain atau lakukan tindakan setelah login sukses
                } else {
                  // Menampilkan pesan kesalahan atau tindakan jika login gagal
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

