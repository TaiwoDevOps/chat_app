import 'package:chat_screen_ui/model/chat_model.dart';
import 'package:chat_screen_ui/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'chatMessage.dart';

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.isMe});
  final String text;
  final isMe;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Bubble(
            message: text,
            time: DateTime.now(),
            delivered: true,
            isMe: isMe,
          ),
        ],
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  //! Use the constructor of this class to pass the data of the person you are chatting with
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();
  List<ChatMessageModel> chatResponse = List<ChatMessageModel>();
  var chatMessageRecieved;
  String firstName, lastName, token;
  int userId;
  bool noTextDontSend = false;
  String lastSelectedValue;
  // List _receivedMessageList;

  List<dynamic> clientChatHistory = [];
  List<dynamic> myChatHistory = [];

  @override
  void initState() {
    super.initState();
  }

  void _handleSubmitted(String text) async {
    _textController.clear();
    if (text.isEmpty) return;

    ChatMessage message = ChatMessage(
      text: text,
      isMe: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  // For handling Client message
  void clientChatMessage(String clientMessages) {
    ChatMessage message = ChatMessage(
      text: clientMessages,
      isMe: false,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  // For handling My message
  void myChatMessage(String clientMessages) {
    ChatMessage message = ChatMessage(
      text: clientMessages,
      isMe: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _buildTextComposer() {
    return Stack(
      children: <Widget>[
        Container(
          height: 70,
          color: Color(0xFFEDEDED),
          // color: Colors.red,
        ),
        Positioned(
          top: 10.0,
          left: 50.0,
          child: Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration.collapsed(
                  hintText: "Type a message",
                  hintStyle: textGreyBlack,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 10.0,
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                _handleSubmitted(_textController.text);
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: orangeColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                child: Text(
                  'Send',
                  textAlign: TextAlign.center,
                  style: headingWhite,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 15.0,
          bottom: 25,
          child: Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                selectCamera();
              },
              child: Container(
                child: Icon(Icons.attach_file),
                width: 30,
                height: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.2,
              child: GestureDetector(
                onHorizontalDragDown: (_) {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: Column(children: <Widget>[
                  Flexible(
                    child: ListView.builder(
                      padding: EdgeInsets.all(8.0),
                      reverse: true,
                      itemBuilder: (_, int index) => _messages[index],
                      itemCount: _messages.length,
                    ),
                  ),
                  Divider(height: 1.0),
                  _buildTextComposer(),
                ]),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 110,
              width: double.infinity,
              color: orangeColor,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 13.0, top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    '',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 7.0),
                            child: Text(
                              "NAME",
                              style: mediumHeading18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0, right: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          print('Search systemn');
                        },
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future getImageLibrary() async {
    try {
      var gallery = await ImagePicker.pickImage(
          source: ImageSource.gallery, maxWidth: 700);
      if (gallery == null) return;
      setState(() {
        // _image = gallery;
      });
    } catch (e) {
      throw Exception('Something went wrong $e');
    }
  }

  Future cameraImage() async {
    try {
      var image = await ImagePicker.pickImage(
          source: ImageSource.camera, maxWidth: 700);
      if (image == null) return;
      print(image);
      setState(() {
        // _image = image;
      });
    } catch (e) {
      throw Exception('Something went wrong $e');
    }
  }

  void showDemoActionSheet({BuildContext context, Widget child}) {
    showCupertinoModalPopup<String>(
      context: context,
      builder: (BuildContext context) => child,
    ).then((String value) {
      if (value != null) {
        setState(() {
          // lastSelectedValue = value;
        });
      }
    });
  }

  selectCamera() {
    showDemoActionSheet(
      context: context,
      child: CupertinoActionSheet(
        title: const Text(''),
        actions: <Widget>[
          CupertinoActionSheetAction(
            child: const Text('Snap and share'),
            onPressed: () {
              Navigator.pop(context, 'Snap and share');
              cameraImage();
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Upload from library'),
            onPressed: () {
              Navigator.pop(context, 'Upload from library');
              getImageLibrary();
            },
          ),
        ],
      ),
    );
  }
}
