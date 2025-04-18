import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/logic/home_cubit.dart';
import 'package:news/features/home/logic/home_state.dart';
import 'package:news/features/home/presentation/widgets/home_custom_tab_bar.dart';
import 'package:news/features/home/presentation/widgets/home_tab_bar_content.dart';

class HomeTabController extends StatelessWidget {
  const HomeTabController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (previous, current) =>
                current is CategoryLoadingState ||
                current is CategoryFailureState ||
                current is CategorySuccessState,
            builder: (context, state) {
              if (state is CategoryLoadingState) {
                return Center(child: CircularProgressIndicator());
              } else if (state is CategoryFailureState) {
                return Center(child: Text(state.error));
              } else if (state is CategorySuccessState) {
                return HomeCustomTabBar(data: state.categoryResponse.data);
              }
              return SizedBox();
            },
          ),
          BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (previous, current) =>
                current is NewsLoadingState ||
                current is NewsFailureState ||
                current is NewsSuccessState,
            builder: (context, state) {
              if (state is NewsLoadingState) {
                return Center(child: CircularProgressIndicator());
              } else if (state is NewsFailureState) {
                return Center(child: Text(state.error));
              } else if (state is NewsSuccessState) {
                return HomeTabBarContent(data: state.newsResponse.data);
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
