import 'package:chat_screen_ui/components/message_widget.dart';
import 'package:chat_screen_ui/viewmodel/messagesListViewModel.dart';
import 'package:chat_screen_ui/viewmodel/messagesViewModel.dart';
import 'package:flutter/material.dart';

import 'loading_screen_widget.dart';

Widget messagesBuildList(BuildContext context, MessagesListViewModel messages) {
  int pageNumber = 1;
  switch (messages.loadingStatus) {
    case MessageLoadingStatus.loading:
      return Align(
          alignment: Alignment.center,
          child: loadingScreen(context, 'Loading...'));
    case MessageLoadingStatus.empty:
      return Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.message),
            Text('No messages yet'),
          ],
        ),
      );
    case MessageLoadingStatus.completed:
      return Expanded(
        child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification scrollInfo) {
            if (scrollInfo.metrics.pixels ==
                scrollInfo.metrics.maxScrollExtent) {
              pageNumber++;
              print('Page number ---------$pageNumber');
            }
          },
          child: MessagesList(
            messages: messages.messages,
            onSelected: (message) {
              _photographerProfile(message, context);
            },
          ),
        ),
      );
  }
}

_photographerProfile(MessagesViewModel message, BuildContext context) {
//TODO: Navigate to the chat screen of you and the photographer;
}
