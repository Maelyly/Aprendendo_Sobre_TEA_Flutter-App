// class SearchBar extends StatefulWidget {
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }

// class SearchBar extends State<SearchBar> {
//   TextEditingController _searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: children: [
//             Container(
//               width: 50,
//               margin: EdgeInsets.symmetric(horizontal: 20.0),
//               padding: EdgeInsets.symmetric(horizontal: 8.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10.0),
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 2.0,
//                 ),
//               ),
//               child: TextField(
//                 controller: _searchController,
//                 decoration: InputDecoration(
//                   hintText: 'O que você procura?',
                  
//                   icon: Icon(Icons.search, color: Colors.black),
//                 ),
//                 onChanged: (query) {
//                   print('Search query: $query'); // Handle the search query here
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             // Add other widgets here, e.g., a list to display search results
//           ],
//         ),
//       ),
//     );
//   }
// }
// class SearchBar extends StatefulWidget {
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }

// class SearchBar extends State<SearchBar> {
//   TextEditingController _searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: children: [
//             Container(
//               width: 50,
//               margin: EdgeInsets.symmetric(horizontal: 20.0),
//               padding: EdgeInsets.symmetric(horizontal: 8.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10.0),
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 2.0,
//                 ),
//               ),
//               child: TextField(
//                 controller: _searchController,
//                 decoration: InputDecoration(
//                   hintText: 'O que você procura?',
                  
//                   icon: Icon(Icons.search, color: Colors.black),
//                 ),
//                 onChanged: (query) {
//                   print('Search query: $query'); // Handle the search query here
//                 },
//               ),
//             ),
//             SizedBox(height: 12, width: 50),
//             // Add other widgets here, e.g., a list to display search results
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SearchBarTEA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'O que você procura?',
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.search),
        ],
      ),
    );
  }
}