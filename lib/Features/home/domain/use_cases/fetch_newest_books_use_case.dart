import 'package:bookly_app_clean_arch/Core/errors/failure.dart';
import 'package:bookly_app_clean_arch/Core/use_cases/no_param_use_case.dart';
import 'package:bookly_app_clean_arch/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_clean_arch/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
// if I want to check permssion or any code I want to do here
    return await homeRepo.fetchNewestBooks();
  }
}
