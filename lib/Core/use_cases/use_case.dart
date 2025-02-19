import 'package:bookly_app_clean_arch/Core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<type, param> {
  Future<Either<Failure, type>> call(param param);
}
