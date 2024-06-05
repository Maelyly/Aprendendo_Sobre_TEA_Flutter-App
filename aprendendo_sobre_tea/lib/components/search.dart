// import 'package:flutter/material.dart';

// class Search extends StatefulWidget {
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }

// class _SearchBarState extends State<Search> {
//   TextEditingController _searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Container(
//               width: 250, // Largura específica
//               height: 50, // Altura específica
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
//                 style: TextStyle(color: Colors.black), // Cor do texto
//                 decoration: InputDecoration(
//                   hintText: 'O que você procura?',
//                   hintStyle: TextStyle(color: Colors.black), // Cor do texto de dica
//                   icon: Icon(Icons.search, color: Colors.black), // Cor do ícone
//                   border: InputBorder.none, // Remover a borda padrão do TextField
//                 ),
//                 onChanged: (query) {
//                   print('Search query: $query'); // Handle the search query here
//                 },
//               ),
//             ),
//             SizedBox(height: 12),
//             // Add other widgets here, e.g., a list to display search results
//           ],
//         ),
//       ),
//     );
//   }
// }