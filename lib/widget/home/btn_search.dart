// import 'package:flutter/material.dart';
// import 'package:food_delivery_app/screens/profile.dart';
//
// class ButtonSearch extends StatefulWidget {
//   final VoidCallback onProfilePressed;
//
//   ButtonSearch({
//     required this.onProfilePressed,
//   });
//
//   @override
//   _ButtonSearchState createState() => _ButtonSearchState();
// }
//
// class _ButtonSearchState extends State<ButtonSearch> {
//   bool isSearching = false;
//   String searchText = "";
//
//   void _toggleSearch() {
//     setState(() {
//       isSearching = !isSearching;
//       if (!isSearching) {
//         searchText = "";
//       }
//     });
//   }
//
//   void _showSearchDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text("Search"),
//           content: TextField(
//             onChanged: (value) {
//               setState(() {
//                 searchText = value;
//               });
//             },
//             decoration: InputDecoration(
//               hintText: "Enter search text",
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text("Search"),
//               onPressed: () {
//                 print("Searching for: $searchText");
//                 Navigator.of(context).pop();
//                 _toggleSearch();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void _navigateToProfilePage(BuildContext context) {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => ProfilePage(), // Ganti dengan halaman profil yang sesuai
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 90,
//       height: 40,
//       child: ElevatedButton(
//         onPressed: () {
//           if (isSearching) {
//             _toggleSearch();
//           } else {
//             _toggleSearch();
//             _showSearchDialog(context);
//           }
//         },
//         style: ElevatedButton.styleFrom(
//           primary: Colors.white,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//             side: BorderSide(
//               color: Colors.black,
//               width: 1,
//             ),
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(right: 8.0), // Sesuaikan dengan jarak yang Anda inginkan
//               child: Icon(
//                 Icons.search,
//                 color: isSearching ? Colors.grey : Colors.black,
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 _navigateToProfilePage(context);
//               },
//               child: CircleAvatar(
//                 radius: 10,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';

class ButtonSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Neaaorea",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 130), // Jarak antara judul dan rectangle
        CustomSearchBar(),
      ],
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.search),
          CircleAvatar(
            radius: 12,
          ),
        ],
      ),
    );
  }
}


