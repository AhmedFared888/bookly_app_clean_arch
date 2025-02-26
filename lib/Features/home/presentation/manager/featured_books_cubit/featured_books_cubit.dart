import 'package:bloc/bloc.dart';
import 'package:bookly_app_clean_arch/Features/home/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_cases/fetch_featured_books_use_case.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  Future<void> fetchFeaturedBook() async {
    emit(FeaturedBooksLoading());
    var result = await fetchFeaturedBooksUseCase.call();
    result.fold((L) {
      emit(FeaturedBooksFailure(L.message));
    }, (R) {
      emit(FeaturedBooksSuccess(R));
    });
  }
}
