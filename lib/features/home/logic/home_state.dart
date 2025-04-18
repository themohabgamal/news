import 'package:news/features/home/data/models/category_model.dart';
import 'package:news/features/home/data/news_model.dart';

import '../data/models/banner_response_model.dart';

abstract class HomeState {
  const HomeState();
}

class HomeInitialState extends HomeState {}

class HomeSuccessState extends HomeState {
  final BannerResponseModel bannerResponseModel;
  const HomeSuccessState({required this.bannerResponseModel});
}

class HomeFailureState extends HomeState {
  final String error;
  const HomeFailureState({required this.error});
}

class HomeLoadingState extends HomeState {}

class CategorySuccessState extends HomeState {
  final CategoryResponse categoryResponse;
  const CategorySuccessState({required this.categoryResponse});
}

class CategoryFailureState extends HomeState {
  final String error;
  const CategoryFailureState({required this.error});
}

class CategoryLoadingState extends HomeState {}

class NewsSuccessState extends HomeState {
  final NewsResponse newsResponse;
  const NewsSuccessState({required this.newsResponse});
}

class NewsFailureState extends HomeState {
  final String error;
  const NewsFailureState({required this.error});
}

class NewsLoadingState extends HomeState {}
