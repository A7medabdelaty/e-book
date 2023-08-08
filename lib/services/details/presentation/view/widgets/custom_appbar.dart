import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30, bottom: 30,top: 10),
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
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
