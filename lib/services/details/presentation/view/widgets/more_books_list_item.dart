import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class MoreListItem extends StatelessWidget {
  const MoreListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      width: MediaQuery.of(context).size.width * 0.186,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppAssets.bookImage,
          ),
        ),
      ),
    );
  }
}
