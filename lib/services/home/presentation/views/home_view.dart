import 'package:bookly/services/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/services/home/presentation/views/widgets/home_hilight_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = 'home view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppbar(),
          HomeHighlightList(),
        ],
      ),
    );
  }
}
