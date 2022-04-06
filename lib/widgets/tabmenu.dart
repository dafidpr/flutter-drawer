import 'package:flutter/material.dart';
import 'package:pertemuan_kelima/components/tabbar.dart';

class CustomTabMenu extends StatelessWidget {
  const CustomTabMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorWeight: 3,
      indicatorColor: Colors.white,
      tabs: [
        Tab(
          icon: Icon(Icons.photo_camera),
        ),
        CustomTabBar(
          title: 'chats',
        ),
        CustomTabBar(
          title: 'status',
        ),
        CustomTabBar(
          title: 'calls',
        ),
      ],
    );
  }
}
