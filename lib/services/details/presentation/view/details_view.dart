import 'package:bookly/services/details/presentation/view/widgets/book_info.dart';
import 'package:bookly/services/details/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly/services/details/presentation/view/widgets/custom_buttons.dart';
import 'package:bookly/services/details/presentation/view/widgets/more_books_list.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  static const String routeName = 'details view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          DetailsAppbar(),
          BookInformationCard(),
          CustomButtons(),
          MoreBooksList(),
        ],
      ),
    );
  }
}
