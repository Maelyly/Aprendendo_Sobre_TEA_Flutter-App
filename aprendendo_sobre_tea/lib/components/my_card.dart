import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const MyCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Color(0xFF68B2FF), // Set background color
        elevation: 4, // Add elevation for shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // Set border radius
        ),
        child: ListTile(
          title: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.0, // Adjust text size as needed
                color: Colors.white, // Set text color to white
              ),
            ),
          ),
          subtitle: Center(
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 16.0, // Adjust text size as needed
                color: Colors.white, // Set text color to white
              ),
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
