import 'package:chat_app/models/chat_message_entity.dart';
import 'package:chat_app/widgets/chat_bubble.dart';
import 'package:chat_app/widgets/chat_input.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);

  //TODO: Create mock list
  List<ChatMessageEntity> _messages = [
    ChatMessageEntity(
      id: '1',
      text: 'First text',
      createdAt: DateTime.now().millisecondsSinceEpoch,
      author: Author(
        userName: 'poojab26',
      ),
    ),
    ChatMessageEntity(
      id: '1',
      text: 'Second text',
      createdAt: DateTime.now().millisecondsSinceEpoch,
      author: Author(
        userName: 'poojab26',
      ),
      imageUrl:
          'https://img.freepik.com/free-vector/flat-design-atheism-logo_23-2149240532.jpg?t=st=1730628978~exp=1730632578~hmac=1e96fbbfb1669b7f7a3dd6bcfd68d7eca8673ef9068c55919eb4a69cb6b6853f&w=740',
    ),
    ChatMessageEntity(
      id: '1',
      text: 'Third text',
      createdAt: DateTime.now().millisecondsSinceEpoch,
      author: Author(
        userName: 'poojab26',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi $username!'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
                print('Icon pressed!');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(
                    alignment: index % 2 == 0
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    entity: _messages[index]);
              },
            ),
          ),
          ChatInput(),
        ],
      ),
    );
  }
}
