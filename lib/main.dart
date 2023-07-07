import 'package:bookly/constants.dart';
import 'package:bookly/services/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import 'services/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: kMainColor,
      ),
      routes: {
        HomeView.routeName: (context) => const HomeView(),
      },
      home: const SplashView(),
    );
  }
}
