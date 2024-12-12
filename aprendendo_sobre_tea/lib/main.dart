import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import './components/globalVariable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GlobalState(),
      child:MaterialApp(
      title: 'Aprendendo sobre TEA',
      home: HomePage(),
    ));
  }
}
