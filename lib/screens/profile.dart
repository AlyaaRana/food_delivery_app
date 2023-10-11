import 'package:flutter/material.dart';

import '../widget/profile/icon_divider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Profile",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/image/profile/me.jpg',
                    width: 75,
                    height: 75,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alyaa Rana Raya",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text("alyaaranaraya@gmail.com"),
                    Text("+62 123 456 789"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30), // Add some spacing
            IconWithTextAndDivider(
              iconData: Icons.account_circle,
              text: 'Account',
              routeName: '/account', // Gunakan nama rute yang sesuai
            ),
            SizedBox(height: 15),
            IconWithTextAndDivider(
              iconData: Icons.location_on,
              text: 'Adress',
              routeName: '/account', // Gunakan nama rute yang sesuai
            ),
            SizedBox(height: 15),
            IconWithTextAndDivider(
              iconData: Icons.payment,
              text: 'Payment Method',
              routeName: '/account', // Gunakan nama rute yang sesuai
            ),
            SizedBox(height: 15),
            IconWithTextAndDivider(
              iconData: Icons.settings,
              text: 'Settings',
              routeName: '/account', // Gunakan nama rute yang sesuai
            ),
            SizedBox(height: 15),
            IconWithTextAndDivider(
              iconData: Icons.people,
              text: 'Share With Friend',
              routeName: '/account', // Gunakan nama rute yang sesuai
            ),
            SizedBox(height: 15),
            IconWithTextAndDivider(
              iconData: Icons.info,
              text: ' About',
              routeName: '/account', // Gunakan nama rute yang sesuai
            ),
            SizedBox(height: 50),
            IconWithTextAndDivider(
              iconData: Icons.exit_to_app,
              text: 'Logout',
              routeName: '/login', // Gunakan nama rute yang sesuai
            ),
          ],
        ),
      ),
    );
  }
}
// class MyIcons {
//   MyIcons._();
//
//   static const IconData account = Icons.account_circle;
//   static const IconData address = Icons.location_on;
//   static const IconData paymentMethod = Icons.payment;
//   static const IconData preferences = Icons.settings;
//   static const IconData shareWithFriend = Icons.people;
//   static const IconData about = Icons.info;
//   static const IconData logout = Icons.exit_to_app;
// }

