import 'package:flutter/material.dart';
import 'package:flutter_ec_app/screens/screens.dart';

import '../models/models.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route : ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
        case SplashScreen.routeName:
        return SplashScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case WishListScreen.routeName:
        return WishListScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("Error !"),
        ),
      ),
      settings: RouteSettings(name: '/error'),
    );
  }
}
