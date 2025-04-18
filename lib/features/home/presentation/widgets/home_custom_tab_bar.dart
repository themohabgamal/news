import 'package:flutter/material.dart';
import 'package:news/core/theme/app_colors.dart';
import 'package:news/core/theme/app_text_styles.dart';

import '../../data/models/category_model.dart';

class HomeCustomTabBar extends StatelessWidget {
  final List<Category> data;

  const HomeCustomTabBar({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.darkGreyColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TabBar(
        labelStyle: AppTextStyles.font12SemiBold,
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white,
        tabs: [
          Tab(text: data[0].name),
          Tab(text: data[1].name),
          Tab(text: data[2].name),
          Tab(text: data[3].name),
        ],
      ),
    );
  }
}
