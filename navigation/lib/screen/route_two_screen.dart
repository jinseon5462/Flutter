import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/main.dart';
import 'package:navigation/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(
      title: 'Route Two Screen',
      children: [
        Text(
          'arguments: ${arguments}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/three',
              arguments: 999,
            );
          },
          child: Text('Push Named'),
        ),
        ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pushReplacement(
            //   MaterialPageRoute(
            //     // [HomeScreen(), RouteOne(), RouteTwo(), RouteThree()]
            //     // [HomeScreen(), RouteOne(), RouteThree()] -> PushReplacement는 RouteTwo를 RouteThree로 대체한다.
            //     builder: (_) => RouteThreeScreen(),
            //   ),
            // );
            Navigator.of(context).pushReplacementNamed('/three');
          },
          child: Text('Push Replacement'),
        ),
        ElevatedButton(
          onPressed: () {
            // [HomeScreen(), RouteOne(), RouteTwo(), RouteThree()]
            // Navigator.of(context).pushAndRemoveUntil(
            //   MaterialPageRoute(
            //     builder: (_) => RouteThreeScreen(),
            //   ),
            //   // false로 하게되면 이전 Route 전부 삭제

            //   // route.settings.name을 하면 앞서 지정했던 부분이 나온다.
            //   (route) => route.settings.name == '/',
            // );
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/three', (route) => route.settings.name == '/');
          },
          child: Text('Push And Remove Until'),
        ),
      ],
    );
  }
}
