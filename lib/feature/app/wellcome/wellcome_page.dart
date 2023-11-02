import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const  EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Center(
              child: Text(
                'Welcome To Whatsapp Clone',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                ), 
            ),
            Image.asset("assets/bg_image.png"),
             Column(
              children: [
                const Text("Read Our Privacy Polices Tap, 'Agree and Continue' to accept the Term and Condition"),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: tabColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'AGREE AND CONTINUE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                        ),
                    ),
                  ),
                )
              ],
            ) 
          ],
        ),
      ),
    );
  }
}