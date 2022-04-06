import 'package:flutter/material.dart';
import 'package:pertemuan_kelima/constant/colors.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: AppColors.primaryColor,
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
      ),
      title: Text(
        'Dafid Prasetyo',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      subtitle: Text('Lorem ipsum dolor sit amet, co...'),
      trailing: Column(
        children: [
          Text(
            '19.20',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
