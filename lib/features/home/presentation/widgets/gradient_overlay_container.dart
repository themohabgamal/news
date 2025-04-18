import 'package:flutter/material.dart';
import 'package:news/features/home/data/news_model.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class GradientOverlayContainer extends StatelessWidget {
  final News newsItem;
  const GradientOverlayContainer({
    super.key,
    required this.newsItem,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(16),
        height: MediaQuery.sizeOf(context).height / 2,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withValues(alpha: .86),
              AppColors.darkGreyColor,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              newsItem.title,
              style: AppTextStyles.font23BoldWhite,
            ),
            Row(
              children: [
                Text(
                  "By",
                  style: AppTextStyles.font12RegularWhite,
                ),
                SizedBox(width: 6),
                Text(
                  newsItem.author,
                  style: AppTextStyles.font12SemiBold
                      .copyWith(color: AppColors.orangeColor),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.white,
              thickness: 0.5,
            ),
            Text(
              newsItem.newsDate,
              style: AppTextStyles.font12RegularWhite,
            ),
          ],
        ),
      ),
    );
  }
}
