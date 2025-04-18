import 'package:bloc/bloc.dart';
import 'package:news/features/home/data/home_repo.dart';
import 'package:news/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit({required this.homeRepo}) : super(HomeInitialState());
  void getBanners() async {
    emit(HomeLoadingState());
    final result = await homeRepo.getBanners();
    result.when(
        success: (data) => emit(HomeSuccessState(bannerResponseModel: data)),
        error: (error) {
          emit(HomeFailureState(error: error));
        });
  }

  void getCategories() async {
    emit(CategoryLoadingState());
    final result = await homeRepo.getCategories();
    result.when(
        success: (data) => emit(CategorySuccessState(categoryResponse: data)),
        error: (error) {
          emit(CategoryFailureState(error: error));
        });
  }

  void getNews() async {
    emit(NewsLoadingState());
    final result = await homeRepo.getNews();
    result.when(
        success: (data) => emit(NewsSuccessState(newsResponse: data)),
        error: (error) {
          emit(NewsFailureState(error: error));
        });
  }
}
