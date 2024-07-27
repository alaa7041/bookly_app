import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';

class FetchFeaturedBooksUseCase{

  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks(){
    return homeRepo.fetchFeaturedBooks();
  }


}