import 'package:chat_screen_ui/themes/style.dart';
import 'package:flutter/material.dart';

Widget loadingScreen(BuildContext context, String message) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Image.asset(
        "assets/image/loading.png",
        height: 100.0,
      ),
      Text(
        message,
        style: textStyleSmall,
      )
    ],
  );
}
