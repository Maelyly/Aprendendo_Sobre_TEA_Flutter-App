import 'package:flutter/material.dart';

class GlobalState extends ChangeNotifier {
  String typeDialog = '1';
  String typeImage = '1';

  void updateTypeDialog(String newValue) {
    typeDialog = newValue;
    notifyListeners();
  }

  void updateTypeImage(String newValue) {
    typeImage = newValue;
    notifyListeners();
  }
}
