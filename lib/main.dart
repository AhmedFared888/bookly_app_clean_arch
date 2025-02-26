import 'package:bookly_app_clean_arch/Core/utils/app_router.dart';
import 'package:bookly_app_clean_arch/Core/utils/simple_bloc_observer.dart';
import 'package:bookly_app_clean_arch/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app_clean_arch/Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app_clean_arch/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'Core/utils/functions/setup_service_locator.dart';
import 'Features/home/domain/entities/book_entity.dart';
import 'Features/home/domain/use_cases/fetch_newest_books_use_case.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(KFeaturedBox);
  await Hive.openBox<BookEntity>(KNewestBox);
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
