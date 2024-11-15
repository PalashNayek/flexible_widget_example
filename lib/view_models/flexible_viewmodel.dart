import 'package:flutter/material.dart';

class FlexibleViewModel extends ChangeNotifier {
  int flex = 1;

  // Method to update the flex value
  void updateFlex(int newFlex) {
    flex = newFlex;
    notifyListeners();
  }
}
