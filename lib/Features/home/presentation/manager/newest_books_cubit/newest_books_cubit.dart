import 'package:bloc/bloc.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';

import '../../../domain/use_cases/fetch_newest_books_use_case.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold((L) {
      emit(NewestBooksFailure(L.message));
    }, (R) {
      emit(NewestBooksSuccess(R));
    });
  }
}
