import 'package:dio/dio.dart';
import 'package:news/features/home/data/models/banner_response_model.dart';
import 'package:news/features/home/data/news_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../core/networking/api_constants.dart';
import 'models/category_model.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(ApiConstants.banners)
  Future<BannerResponseModel> getBanners();

  @GET(ApiConstants.category)
  Future<CategoryResponse> getCategories();

  @GET(ApiConstants.news)
  Future<NewsResponse> getNews();
}
