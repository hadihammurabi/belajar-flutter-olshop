import 'package:flutter/material.dart';

class OlshopAppBar extends AppBar {
  OlshopAppBar({Key? key}) : super(
    key: key,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    centerTitle: true,
    elevation: 0,
    title: Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              'Search Products',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade600,
              ),
              // textAlign: TextAlign.center,
            ),
          ),

          IconButton(
            icon: Icon(Icons.mic, color: Colors.grey.shade600),
            onPressed: () {
            },
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.orange,
        ),
        onPressed: () {},
      ),
    ],
  );
}
