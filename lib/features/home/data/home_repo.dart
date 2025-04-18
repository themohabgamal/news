import 'package:news/core/networking/api_result.dart';
import 'package:news/features/home/data/home_api_service.dart';
import 'package:news/features/home/data/models/category_model.dart';
import 'package:news/features/home/data/news_model.dart';

import 'models/banner_response_model.dart';

class HomeRepo {
  final HomeApiService homeApiService;
  HomeRepo({required this.homeApiService});

  Future<ApiResult<BannerResponseModel>> getBanners() async {
    var result = await homeApiService.getBanners();
    if (result.succeeded == true) {
      return Success(result);
    } else {
      return Error("Unknown error occurred");
    }
  }

  Future<ApiResult<CategoryResponse>> getCategories() async {
    var result = await homeApiService.getCategories();
    if (result.succeeded == true) {
      return Success(result);
    } else {
      return Error("Unknown error occurred");
    }
  }

  Future<ApiResult<NewsResponse>> getNews() async {
    var result = await homeApiService.getNews();
    if (result.succeeded == true) {
      return Success(result);
    } else {
      return Error("Unknown error occurred");
    }
  }
}
