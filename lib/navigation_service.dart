import 'package:flutter/material.dart';

class NavigationService {
  static final NavigationService _navigationService = NavigationService._();

  factory NavigationService() => _navigationService;

  NavigationService._();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get state => navigatorKey.currentState!;

  BuildContext get context => state.context;

  Future<T?> to<T>(Widget destination) {
    return state.push<T>(MaterialPageRoute(builder: (_) => destination));
  }
}
