import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone/feature/app/global/widgets/profile_widget.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';


class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: SizedBox(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: profileWidget(),
              ),
            ),
            title: const Text("UserName"),
            subtitle: const Text(
              "Last message hi",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              ),
            trailing: Text(
              DateFormat.jm().format(DateTime.now()),
              style: const TextStyle(
                fontSize: 15,
                color: greyColor,
              ),
            ),  
          );
        }
        ),
    );
  }
}