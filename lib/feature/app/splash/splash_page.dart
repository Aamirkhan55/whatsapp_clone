import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';
import 'package:whatsapp_clone/feature/presentation/pages/wellcome_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () { 
      Navigator.push(context, MaterialPageRoute(builder: (context) => const WellcomePage() ));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Image.asset(
            "assets/whats_app_logo.png",
            color: Colors.white,
            width: 100,
            height: 100,
            ),
          Column(
            children: [
              const Text(
                "from",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.green,
                ),
                ),
              const SizedBox(height: 10),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/meta.png',
                    color: Colors.white,
                    width: 35,
                    height: 35,
                    ),
                const SizedBox(width: 5),
                const Text(
                  'Meta',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                  ),

                ],
               ), 
            ],
          )  
        ],
      ),
    );
  }
}