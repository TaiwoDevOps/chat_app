import 'package:chat_screen_ui/components/message_listbuild.dart';
import 'package:chat_screen_ui/themes/style.dart';
import 'package:chat_screen_ui/viewmodel/messagesListViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  void initState() {
    Provider.of<MessagesListViewModel>(context, listen: false).getAllMessages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final messages = Provider.of<MessagesListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: headingWhite18,
        ),
        backgroundColor: orangeColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          messagesBuildList(context, messages),
        ],
      ),
    );
  }
}
