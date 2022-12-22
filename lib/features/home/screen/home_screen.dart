import 'package:flutter/material.dart';
import 'package:olshop/features/home/widget/categories.dart';
import 'package:olshop/features/home/widget/offers.dart';
import 'package:olshop/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OlshopAppBar(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              color: Colors.white,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 15),
              child: const Offers(),
            ),

            Container(
              color: Colors.white,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
              child: const Categories(),
            ),

          ],
        ),
      ),
    );
  }
}
