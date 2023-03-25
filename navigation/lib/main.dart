import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_one_screen.dart';
import 'package:navigation/screen/route_three_screen.dart';
import 'package:navigation/screen/route_two_screen.dart';

const HOME_ROUTE = '/';
const ONE_ROUTE = '/one';
const TWO_ROUTE = '/two';
const THREE_ROUTE = '/three';

void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      // root스크린을 지정
      initialRoute: '/',

      // Route설정
      routes: {
        HOME_ROUTE: (context) => HomeScreen(),
        ONE_ROUTE: (context) => RouteOneScreen(),
        TWO_ROUTE: (context) => RouteTwoScreen(),
        THREE_ROUTE: (context) => RouteThreeScreen(),
      },
    ),
  );
}
