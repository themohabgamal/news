import 'package:flutter/material.dart';
import 'package:news/features/home/data/news_model.dart';

import 'article_card.dart';

class LatestArticlesHorizontalListView extends StatelessWidget {
  final List<News> data;
  const LatestArticlesHorizontalListView({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            width: 180,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: ArticleCard(
              newsItem: data[index],
              onReadMore: () {
                print('Read More clicked for Article ${index + 1}');
              },
            ),
          );
        },
      ),
    );
  }
}
