
import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';


class ChatBubble extends StatelessWidget {
  final bool isMe;
  final String? message;
  final String? imgUrl;
  final String? msgType;
  final bool? callStatus;
  final bool isSeen;

  const ChatBubble({
    Key? key,
    required this.isMe,
    this.message,
    this.imgUrl,
    this.msgType,
    this.callStatus,
    this.isSeen = false, // Add seen status
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: isMe ? kgrey2 : kgrey2.withOpacity(0.1),
                blurRadius: 30,
                offset: Offset(0, 20))
          ],
          color: isMe ? kgreen : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: isMe ? Radius.circular(15) : Radius.zero,
            bottomRight: isMe ? Radius.zero : Radius.circular(15),
          ),
        ),
        child: _buildMessageContent(context),
      ),
    );
  }

  Widget _buildMessageContent(BuildContext context) {
    if (msgType == 'image' && imgUrl != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.network(
            imgUrl!,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          _buildSeenStatus(), // Seen status for image
        ],
      );
    } else if (msgType == 'call' && callStatus == true) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            isMe ? "You invited for a call" : "Call Invitation",
            style: TextStyle(color: isMe ? Colors.white : Colors.black87),
          ),
          const SizedBox(height: 5),
          _buildSeenStatus(), // Seen status for call
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            message ?? '',
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black87,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          _buildSeenStatus(), // Seen status for text messages
        ],
      );
    }
  }

  Widget _buildSeenStatus() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (isMe)
          Icon(
            Icons.done_all, // Double tick icon
            size: 16,
            color: isSeen == true
                ? Colors.blue
                : Colors.white54, // Blue if seen, gray if not
          ),
        const SizedBox(width: 4),
        if (isMe)
          Text(
            isSeen ? "Seen" : "Sent",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
      ],
    );
  }
}
