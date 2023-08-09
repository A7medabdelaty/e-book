import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/services/details/data/repos/details_repo_impl.dart';
import 'package:bookly/services/details/presentation/view%20model/similar_books_cubit.dart';
import 'package:bookly/services/details/presentation/views/widgets/book_info.dart';
import 'package:bookly/services/details/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/services/details/presentation/views/widgets/custom_buttons.dart';
import 'package:bookly/services/details/presentation/views/widgets/more_title.dart';
import 'package:bookly/services/details/presentation/views/widgets/similar_books_list.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  static const String routeName = 'details view';

  @override
  Widget build(BuildContext context) {
    BookModel bookModel =
        ModalRoute.of(context)?.settings.arguments as BookModel;
    return BlocProvider(
      create: (context) => SimilarBooksCubit(getIt.get<DetailsRepoImpl>()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const DetailsAppbar(),
              BookInformationCard(bookModel: bookModel),
              CustomButtons(bookModel: bookModel),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: MoreTitleText(),
              ),
              const SizedBox(
                height: 15,
              ),
              SimilarBooksList(bookModel: bookModel),
            ],
          ),
        ),
      ),
    );
  }
}
