import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final String title;
  const CustomTabBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}
