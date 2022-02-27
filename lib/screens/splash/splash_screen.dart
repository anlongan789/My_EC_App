import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ec_app/models/models.dart';

import 'package:flutter_ec_app/widget/widget.dart';

import '../../models/category_model.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => SplashScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () => Navigator.pushNamed(context, '/'));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: const Image(
              image: AssetImage('assets/images/logo.jpg'),
              width: 125,
              height: 125,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            color: Colors.black,
            child: Text(
              'Zero To Hero',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: Colors.white,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
