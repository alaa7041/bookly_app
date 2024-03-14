import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manger/cubit/featured_book_cubit/featured_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState>{
  FeaturedBooksCubit(this.homeRepo):super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void>fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    homeRepo.fetchFeaturedBooks();
    var result = await homeRepo.fetchFeaturedBooks();
    
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    }
    }, (books) {
    emit(FeaturedBooksSuccess(books));
  });
  }
}