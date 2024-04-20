import 'package:flutter/material.dart';
import './components/my_card.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView(
        children: [
          MyCard(
            title: 'Card 1',
            subtitle: 'Description 1',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ),
              );
            },
          ),
          MyCard(
            title: 'Card 2',
            subtitle: 'Description 2',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ),
              );
            },
          ),
          // Add more cards as needed
        ],
      ),
    );
  }
}
