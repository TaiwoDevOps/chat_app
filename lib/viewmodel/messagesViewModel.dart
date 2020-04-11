import 'dart:core';
import 'package:chat_screen_ui/model/chat_model.dart';

class MessagesViewModel {
  ChatMessageModel _chatMessage;

  MessagesViewModel({ChatMessageModel chatMessage})
      : _chatMessage = chatMessage;

  int get messageId {
    return _chatMessage.messageId;
  }

  int get senderId {
    return _chatMessage.senderid;
  }

  int get receiverId {
    return _chatMessage.receiverId;
  }

  String get message {
    return _chatMessage.message;
  }

  int get messageSenderId {
    return _chatMessage.messageSenderId;
  }

  String get createdAt {
    return _chatMessage.createdAt;
  }

  int get senderUnreadMessagesCount {
    return _chatMessage.senderUnreadMessagesCount;
  }

  String get senderProfileImage {
    return _chatMessage.senderProfileImage;
  }

  String get firstName {
    return _chatMessage.firstName;
  }

  String get lastName {
    return _chatMessage.lastName;
  }
}
