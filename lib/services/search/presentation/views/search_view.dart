import 'package:bookly/core/utils/custom_error_widget.dart';
import 'package:bookly/core/utils/custom_progress_indicator.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/services/search/data/repos/search_repo_impl.dart';
import 'package:bookly/services/search/presentation/view%20model/search_for_book_cubit.dart';
import 'package:bookly/services/search/presentation/views/widgets/search_app_bar.dart';
import 'package:bookly/services/search/presentation/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static const String routeName = 'search view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) {
      return SearchForBookCubit(getIt.get<SearchRepoImpl>());
    }, child: BlocBuilder<SearchForBookCubit, SearchForBookState>(
      builder: (context, state) {
        SearchForBookCubit cubit = BlocProvider.of<SearchForBookCubit>(context);
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                SearchCustomAppBar(cubit: cubit),
                if (state is SearchForBookSuccess)
                  SearchResultList(books: state.books),
                if (state is SearchForBookFailure)
                  CustomErrorMessage(state.errMessage),
                if (state is SearchForBookLoading)
                  const CustomLoadingIndicator(),
              ],
            ),
          ),
        );
      },
    ));
  }
}
