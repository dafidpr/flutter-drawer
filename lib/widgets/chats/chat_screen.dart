import 'package:flutter/material.dart';
import 'package:pertemuan_kelima/widgets/chats/archived.dart';
import 'package:pertemuan_kelima/widgets/chats/chat_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const ArchivedChats();
        } else {
          return ChatTile();
        }
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: 5,
    );
  }
}
