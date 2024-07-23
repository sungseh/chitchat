import 'package:chitchat/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../global_members.dart';

class AppChatList extends StatelessWidget {
  const AppChatList({Key? key, required this.scrollController}) : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      controller: scrollController,
      itemCount: messageList.length,
      itemBuilder: (context, index) => (messageList[index].isSender)
          ? AppSenderItem(senderMessage: messageList[index].message)
          : AppReceiverItem(receiverMessage: messageList[index].message),
    );
  }
}
