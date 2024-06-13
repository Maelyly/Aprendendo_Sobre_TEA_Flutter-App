// import 'package:flutter/material.dart';
// import 'my_card.dart';
// import 'storyCard.dart';
// import '../detail_page.dart';
// import '../list_page.dart';
// import '../settings_page.dart';
// import '../home_page.dart';

// class AppBarCustom extends StatelessWidget { 
//     @override
//     Widget build(BuildContext context) {

//         return PreferredSize(
//         preferredSize: Size.fromHeight(60.0),
//         child: Card(
//           margin: EdgeInsets.only(bottom: 10.0),
//           elevation: 2,
//           color: Color(0xFF68B2FF),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.zero, // Set border radius to zero
//           ),
//           child: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.transparent,
//             title: Center(
//                 child: Text(
//               'Aprendendo Sobre TEA',
//               style: TextStyle(
//                 fontSize: 25.0, // Adjust text size as needed
//                 color: Colors.white, // Set text color to white
//               ),
//             )),
//             iconTheme: IconThemeData(color: Colors.white),
//             //actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
//           ),
//         ),
//       ),
      
      
//     }
// }

// class DrawerCustom extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: DrawerHeader(
//                 decoration: BoxDecoration(
//                     color: Colors.blue,
//                 );
//                 child: Text(
//                     'Ache sua História',
//                     style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     ),
//                 ),
//                 ),
//                 ListTile(
//                 title: Text('Página Inicial'),
//                 onTap: () {
//                     Navigator.pop(context); 
//                     Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                     builder: (context) => HomePage(),
//                     ),
//                 ),},),
//                 ListTile(
//                 title: Text('Histórias sobre Sintomas'),
//                 onTap: () {
//                     Navigator.pop(context); 
//                 },
//                 ),
//                 ListTile(
//                 title: Text('Histórias de Escola'),
//                 onTap: () {
//                     Navigator.pop(context);
//                 },
//                 ),
//                 ListTile(
//                 title: Text('Histórias com a Psiquiatra'),
//                 onTap: () {
//                     Navigator.pop(context); 
//                 },
//                 ),
//                 ListTile(
//                 title: Text('Histórias com a Psicóloga'),
//                 onTap: () {
//                     Navigator.pop(context); // Fechar o drawer
//                 },
//                 ),
//                 ListTile(
//                 title: Text('Histórias com os Familiares'),
//                 onTap: () {
//                     Navigator.pop(context); // Fechar o drawer
//                 },
//                 ),
//                 ListTile(
//                 title: Text('Histórias com o Professor'),
//                 onTap: () {
//                     Navigator.pop(context); 
//                 },
//                 ),
//                 ListTile(
//                 title: Text('Sobre o App'),
//                 onTap: () {
//                     Navigator.pop(context);
//                     Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                     builder: (context) => ListPage(),
//                     ),
//                 ), 
//                 },
//                 ),
//                 ListTile(
//                 title: Text('Personalize seu App'),
//                 onTap: () {
//                     Navigator.pop(context); 
//                     Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                     builder: (context) => SettingsPage(),
//                     ),
//                 ), 
//                 },
//                 ),
//             );
//      ),
//      }
// }