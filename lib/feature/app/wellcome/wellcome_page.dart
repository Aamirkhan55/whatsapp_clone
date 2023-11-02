import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';
import 'package:whatsapp_clone/feature/presentation/pages/login_page.dart';

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
                const Text(
                  "Read Our Privacy Polices Tap 'Agree and Continue' to accept the Term and Condition",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
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
                          fontSize: 15,
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