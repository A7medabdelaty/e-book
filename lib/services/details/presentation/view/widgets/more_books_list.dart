import 'package:bookly/services/details/presentation/view/widgets/more_books_list_item.dart';
import 'package:flutter/cupertino.dart';

import 'more_title.dart';

class MoreBooksList extends StatelessWidget {
  const MoreBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        children: [
          const MoreTitleText(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.16,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const MoreListItem(),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: 60,
            ),
          )
        ],
      ),
    );
  }
}
