import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeProvider with ChangeNotifier{
  bool _isSize = true;

  bool get isSize => _isSize; 

  set isSize(bool newValue){
    _isSize = newValue;
    notifyListeners();
  }

  get color => _isSize ? Colors.blue : Colors.pink;
  get textColor => _isSize ? Colors.blue : Colors.grey;
  get femaleColor => _isSize ? Colors.grey : Colors.pink;
}