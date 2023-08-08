import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/services/details/data/repos/details_repo_impl.dart';
import 'package:bookly/services/details/presentation/view%20model/similar_books_cubit.dart';
import 'package:bookly/services/details/presentation/view/details_view.dart';
import 'package:bookly/services/home/data/repos/home_repo_impl.dart';
import 'package:bookly/services/home/presentation/view%20model/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly/services/home/presentation/view%20model/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookly/services/home/presentation/views/home_view.dart';
import 'package:bookly/services/search/presentation/views/search_view.dart';
import 'package:bookly/services/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc_observer.dart';

void main() {
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
              ..getFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<HomeRepoImpl>())..getNewestBooks()),
        BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<DetailsRepoImpl>()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark(useMaterial3: true).copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          scaffoldBackgroundColor: kMainColor,
        ),
        routes: {
          HomeView.routeName: (context) => const HomeView(),
          DetailsView.routeName: (context) => DetailsView(),
          SearchView.routeName: (context) => const SearchView(),
        },
        home: const SplashView(),
      ),
    );
  }
}
