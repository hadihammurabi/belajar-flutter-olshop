import 'package:flutter/material.dart';
import 'package:olshop/features/home/screen/home_screen.dart';
import 'package:olshop/route.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.route,
      routes: buildRoute(),
    );
  }
}
