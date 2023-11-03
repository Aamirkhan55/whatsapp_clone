import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text("ChatPage"),
      ),
    );
  }
}