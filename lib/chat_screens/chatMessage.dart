import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Bubble extends StatelessWidget {
  Bubble({this.message, this.time, this.delivered, this.isMe});
  DateTime time = DateTime.now();
  final String message;
  final delivered, isMe;

  @override
  Widget build(BuildContext context) {
    final bgColor = isMe ? Colors.white : Color(0XFFFFF6E1);
    final textAlign = isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final icon = delivered ? Icons.done : Icons.done_all;
    final radius = isMe
        ? BorderRadius.only(
            topRight: Radius.circular(5.0),
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
          )
        : BorderRadius.only(
            topLeft: Radius.circular(5.0),
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
          );
    //! using the message response from the bubble to make the alignment work
    return Column(
      crossAxisAlignment: textAlign,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(3.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: .5,
                  spreadRadius: 1.0,
                  color: Colors.black.withOpacity(.12))
            ],
            color: bgColor,
            borderRadius: radius,
          ),
          child: Text(message),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              // Text(
              //   DateFormat('kk:mm:ss \n EEE d MMM').format(time),
              //   style: TextStyle(
              //     color: Colors.black38,
              //     fontSize: 10.0,
              //   ),
              // ),
              SizedBox(width: 3.0),
              Icon(
                icon,
                size: 12.0,
                color: Colors.black38,
              )
            ],
          ),
        ),
      ],
    );
  }
}
