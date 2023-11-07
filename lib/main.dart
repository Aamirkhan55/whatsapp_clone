import 'package:flutter/material.dart';
import 'package:whatsapp_clone/feature/app/theme/style.dart';
import 'package:whatsapp_clone/feature/app/splash/splash_page.dart';
import 'package:whatsapp_clone/routes/on_generate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        dialogBackgroundColor: appBarColor,
        appBarTheme: const AppBarTheme(
          color: appBarColor,
        ),
        useMaterial3: true,
      ),
      initialRoute: "/",
      onGenerateRoute: OnGenerateRoute.route,
      routes: {"/": (context) => const SplashPage()},
    );
  }
}
