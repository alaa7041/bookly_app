import 'package:bookly_app/features/home/domain/entities/book_entities.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>,NoParams>{

  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParams? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }

}

abstract class UseCase<Type, Param>{
  Future<Either<Failure,Type>> call ([Param param]);
}

class NoParams{}