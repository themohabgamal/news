import 'package:flutter/material.dart';
import 'package:news/core/theme/app_colors.dart';
import 'package:news/core/theme/app_text_styles.dart';
import 'package:news/features/home/data/news_model.dart';
import '../screens/news_item_details.dart';

class ArticleCard extends StatelessWidget {
  final News newsItem;
  final VoidCallback onReadMore;

  const ArticleCard({
    super.key,
    required this.newsItem,
    required this.onReadMore,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return NewsItemDetails(
            newsItem: newsItem,
          );
        },
      )),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        color: AppColors.darkGreyColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article Image
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  newsItem.imageUrl,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // Article Title
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                child: Text(
                  newsItem.title,
                  style: AppTextStyles.font12RegularWhite,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Spacer(),
              // Read More Button
              Padding(
                padding: const EdgeInsets.only(left: 2, right: 16, bottom: 2),
                child: GestureDetector(
                  onTap: () => onReadMore,
                  child: Row(
                    children: [
                      Icon(
                        Icons.book,
                        color: AppColors.whiteColor,
                        size: 16,
                      ),
                      Text(
                        'Read More',
                        style: AppTextStyles.font12Regular
                            .copyWith(color: AppColors.whiteColor),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
