import 'package:chat_screen_ui/model/chat_model.dart';
import 'package:flutter/cupertino.dart';

import 'messagesViewModel.dart';

enum MessageLoadingStatus { completed, loading, empty }

class MessagesListViewModel extends ChangeNotifier {
  var loadingStatus = MessageLoadingStatus.loading;

  List<MessagesViewModel> messages = List<MessagesViewModel>();

  Future<void> getAllMessages() async {
    this.loadingStatus = MessageLoadingStatus.loading;
    notifyListeners();

    List<ChatMessageModel> messages;
    //  = await //! HIT THE ENDPOINT HERE IF YOU ARE FETCHING;

    this.messages = messages
        .map((message) => MessagesViewModel(chatMessage: message))
        .toList();

    this.loadingStatus = this.messages.length == 0
        ? MessageLoadingStatus.empty
        : MessageLoadingStatus.completed;
    notifyListeners();
  }
}
