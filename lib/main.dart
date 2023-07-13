import 'package:bookly/constants.dart';
import 'package:bookly/services/home/presentation/views/home_view.dart';
import 'package:bookly/services/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        scaffoldBackgroundColor: kMainColor,
      ),
      routes: {
        HomeView.routeName: (context) => const HomeView(),
      },
      home: const SplashView(),
    );
  }
}
