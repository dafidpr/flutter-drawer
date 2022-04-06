import 'package:flutter/material.dart';
import 'package:pertemuan_kelima/widgets/tabmenu.dart';
import 'package:pertemuan_kelima/constant/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 49,
      pinned: true,
      expandedHeight: 110,
      backgroundColor: AppColors.primaryColor,
      title: const Text(
        'WhatsApp',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          color: Colors.white,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
      bottom: const PreferredSize(
        child: CustomTabMenu(),
        preferredSize: Size.fromHeight(0),
      ),
    );
  }
}
