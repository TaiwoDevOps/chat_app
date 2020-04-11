import 'package:chat_screen_ui/themes/style.dart';
import 'package:chat_screen_ui/viewmodel/messagesViewModel.dart';
import 'package:flutter/material.dart';

class MessagesList extends StatelessWidget {
  final List<MessagesViewModel> messages;
  final Function(MessagesViewModel message) onSelected;

  MessagesList({this.messages, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        final message = messages[index];
        return Column(
          children: <Widget>[
            SizedBox(
              height: 128,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 2,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: message.senderProfileImage ==
                                                  null
                                              ? AssetImage('assets/image/3.png')
                                              : NetworkImage(
                                                  message.senderProfileImage),
                                        ),
                                      ),
                                    ),
                                  ),
                                  message.senderUnreadMessagesCount == 0
                                      ? Container()
                                      : Positioned(
                                          top: 1,
                                          child: Container(
                                            height: 25,
                                            // width: 25,
                                            padding: EdgeInsets.all(1),
                                            decoration: BoxDecoration(
                                              color: Color(0XFFFFA200),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            constraints: BoxConstraints(
                                              minWidth: 12,
                                              minHeight: 12,
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  5.0,
                                                ),
                                                child:
                                                    message.senderUnreadMessagesCount >
                                                            50
                                                        ? Text(
                                                            '${message.senderUnreadMessagesCount.toString()}+ ',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          )
                                                        : Text(
                                                            '${message.senderUnreadMessagesCount.toString()}',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 14,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                              ),
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                              Text(
                                ' Name',
                                style: textBoldBlack,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 4,
                          ),
                          Text(
                            '20 min ago',
                            style: textBoldBlack,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          '${message.message}',
                          textAlign: TextAlign.justify,
                          style: textBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 4,
            ),
          ],
        );
      },
    );
  }
}
