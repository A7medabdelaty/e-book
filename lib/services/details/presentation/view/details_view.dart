import 'package:bookly/services/details/presentation/view/widgets/book_info.dart';
import 'package:bookly/services/details/presentation/view/widgets/custom_appbar.dart';
import 'package:bookly/services/details/presentation/view/widgets/custom_buttons.dart';
import 'package:bookly/services/details/presentation/view/widgets/similar_books_list.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  DetailsView({super.key});

  static const String routeName = 'details view';

  late final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    bookModel = ModalRoute.of(context)?.settings.arguments as BookModel;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DetailsAppbar(),
            const BookInformationCard(),
            const CustomButtons(),
            SimilarBooksList(bookModel: bookModel),
          ],
        ),
      ),
    );
  }
}
