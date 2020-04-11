class ChatMessageModel {
  final int messageId;
  final int senderid;
  final int receiverId;
  final String message;
  final int messageSenderId;
  final String createdAt;
  final int senderUnreadMessagesCount;
  final String senderProfileImage;
  final String firstName;
  final String lastName;

  ChatMessageModel({
    this.senderUnreadMessagesCount,
    this.messageId,
    this.senderid,
    this.receiverId,
    this.message,
    this.messageSenderId,
    this.createdAt,
    this.senderProfileImage,
    this.firstName,
    this.lastName,
  });

  factory ChatMessageModel.fromJSON(Map<String, dynamic> json) {
    return ChatMessageModel(
      messageId: json['id'],
      senderid: json['sender_id'],
      receiverId: json['receiver_id'],
      message: json['message'],
      messageSenderId: json['sender']['id'],
      createdAt: json['created_at'],
      senderUnreadMessagesCount: json['sender']['unread_messages_count'],
      senderProfileImage: json['receiver']['profile_image'],
      firstName: json['receiver']['first_name'],
      lastName: json['receiver']['last_name'],
    );
  }
}
