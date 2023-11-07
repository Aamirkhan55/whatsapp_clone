import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/global/date/date_format.dart';
import 'package:whatsapp_clone/feature/app/global/widgets/profile_widget.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';

class CallHistoryPage extends StatelessWidget {
  const CallHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(height: 15),
             const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Recent Calls",
                style: TextStyle(
                  fontSize: 15,
                  color: greyColor,
                  fontWeight: FontWeight.w600
                ),
                ) ,
              ),
            const SizedBox(height: 5),  
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                return  ListTile(
                  leading: Container(
                    width: 55,
                    height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: profileWidget(),
                  ),
                  ),
                  title: const Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.call_made,
                        size: 19,
                        color: Colors.green,
                        ),
                      const  SizedBox(width: 10),
                      Text(
                        formatDateTime(DateTime.now()),
                      ),  
                    ],
                  ),  
                  trailing: const Icon(
                    Icons.call,
                    color: tabColor,
                  ),
                );
              } )
          ],
        ),
      ),
    );
  }
}