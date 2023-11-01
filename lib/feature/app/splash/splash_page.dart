import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       title: const Text('Splash Screen'),
       backgroundColor: appBarColor,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.call),
          Align(
            alignment: Alignment.center,
            child:Text('Whatsapp'),
          ),
        ],
      ),
    );
  }
}