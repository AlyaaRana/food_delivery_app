import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
       body: Padding(
         padding: EdgeInsets.all(16.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Text("Profile",
           style: TextStyle(
             fontSize: 24 
           ),)
           ],
         ),
       )
    );
  }
}
