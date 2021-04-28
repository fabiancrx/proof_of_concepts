import 'package:flt_navigation_service_example/empty.dart';
import 'package:flutter/material.dart';

import 'navigation_service.dart';

class ComplexViewModel extends ChangeNotifier {
  int _counter;
  Navigate navigationService;

  ComplexViewModel(this.navigationService, [this._counter = 0]);

  int get counter => _counter;
  void increment() {
    ++_counter;
    if (_counter == 7) {
      ScaffoldMessenger.of(navigationService.context).showSnackBar(SnackBar(
        content: Text('💩💩💩💩💩💩💩💩💩💩'),
      ));
    }
    if (_counter == 14) {
      navigationService.to(Empty());
    }
    notifyListeners();
  }

  void decrement() {
    --_counter;
    if (_counter == -7) {
      navigationService.state.pop();
    }
    notifyListeners();
  }

  void reset() {
    _counter = 0;

    notifyListeners();
  }
}
