import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';

class CallHistoryPage extends StatelessWidget {
  const CallHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(height: 15),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Recent Calls",
                style: TextStyle(
                  fontSize: 15,
                  color: greyColor,
                  fontWeight: FontWeight.w600
                ),
                ) ,
              )
          ],
        ),
      ),
    );
  }
}