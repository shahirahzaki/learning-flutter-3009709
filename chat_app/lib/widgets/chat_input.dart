import 'dart:developer';

import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final chatMessageController = TextEditingController();

  ChatInput({Key? key}) : super(key: key);

  void onSendButtonPressed() {
    log('message: ${chatMessageController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          //TODO: Add multi-line TextField here
          Expanded(
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              minLines: 1,
              controller: chatMessageController,
              //no validation needed so dont use textformfield
              decoration: InputDecoration(
                hintText: 'Type a message...',
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                border: InputBorder.none,
              ),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: onSendButtonPressed,
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    );
  }
}
