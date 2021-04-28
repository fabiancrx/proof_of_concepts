import 'package:flutter/material.dart';

class Navigate {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get state => navigatorKey.currentState!;
  BuildContext get context => state.context;
  Future<T?> to<T>(Widget destination) {
    return state.push<T>(MaterialPageRoute(builder: (_) => destination));
  }
}
