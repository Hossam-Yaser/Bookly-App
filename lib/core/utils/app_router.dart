import 'package:bookly_app/core/utils/dependancy_injection.dart';
import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home/presentation/view_model/bestsellerbooks_cubit/bestsellerbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/futured_books_cubit/futuredbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/similarbooks/similarbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_implementation.dart';
import 'package:bookly_app/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String khomeView = '/homeView';
  static String kBookDetailsView = '/bookDetailsView';
  static String kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: khomeView,
        builder: (BuildContext context, GoRouterState state) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    BestsellerbooksCubit(getIt.get<HomeRepoImpl>())
                      ..fetchBestSellerBooks(),
              ),
              BlocProvider(
                create: (context) =>
                    FuturedbooksCubit(getIt.get<HomeRepoImpl>())
                      ..fetchFuturedBooks(),
              ),
            ],
            child: const HomeView(),
          );
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          final book = state.extra as BookResponseModel;
          return BlocProvider(
            create: (context) => SimilarbooksCubit(
              getIt.get<HomeRepoImpl>(),
              category: book.volumeInfo!.categories?.first,
            )..fetchSimilarBooks(),
            child: BookDetailsView(bookResponseModel: book),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) =>
                SearchCubit(getIt.get<SearchRepoImplementation>()),
            child: SearchView(),
          );
        },
      ),
    ],
  );
}
