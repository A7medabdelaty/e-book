import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.xmark,
                )),
            const Spacer(),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
