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


class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
      child: TextField(

        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(
              width: 0,
              color: Colors.black,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          fillColor: Color(0xFFFEFDFD),
          suffixIcon: Icon(Icons.sort,color: Colors.black,),
          hintStyle: new TextStyle(color: Color(0xFFd0cece), fontSize: 18),
          hintText: "What would your like to buy?",
        ),
      ),
    );
  }
}


