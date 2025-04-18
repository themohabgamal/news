import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/theme/app_colors.dart';
import 'package:news/features/home/data/home_api_service.dart';
import 'package:news/features/home/data/home_repo.dart';
import 'package:news/features/home/logic/home_cubit.dart';
import 'package:news/features/home/logic/home_state.dart';
import 'package:news/features/home/presentation/widgets/carousel_with_indicator.dart';
import '../widgets/home_header_section.dart';
import '../widgets/home_tab_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) =>
          HomeCubit(homeRepo: HomeRepo(homeApiService: HomeApiService(Dio())))
            ..getBanners()
            ..getCategories()
            ..getNews(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeHeaderSection(),
                  SizedBox(height: 20),
                  BlocBuilder<HomeCubit, HomeState>(
                    buildWhen: (previous, current) =>
                        current is HomeLoadingState ||
                        current is HomeFailureState ||
                        current is HomeSuccessState,
                    builder: (context, state) {
                      if (state is HomeLoadingState) {
                        return Center(child: CircularProgressIndicator());
                      } else if (state is HomeFailureState) {
                        return Center(child: Text(state.error));
                      } else if (state is HomeSuccessState) {
                        return CarouselWithIndicator(
                          banners: state.bannerResponseModel.data,
                        );
                      }
                      return SizedBox();
                    },
                  ),
                  HomeTabController(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
