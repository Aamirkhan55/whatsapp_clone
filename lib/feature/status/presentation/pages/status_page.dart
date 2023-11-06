import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/global/widgets/profile_widget.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: profileWidget(),
                    ),
                  ),
                 Positioned(
                  bottom: 8,
                  right: 10,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: tabColor,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 2,
                        color: backgroundColor,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                          Icons.add,
                          size: 20,
                          )
                        ),
                    ),
                  ), 
                ],
              ),
             const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Status",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    ),
                  SizedBox(height: 4),
                  Text(
                    "Tap to add your status update",
                    style: TextStyle(
                      color: greyColor
                    ),
                    )  
                ],
                )
              ), 
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Recent Update",
              style: TextStyle(
                fontSize: 15,
                color: greyColor,
                fontWeight: FontWeight.w600,
              ),
              ),
          ),
        ],
      ),
     ),
    );
  }
}