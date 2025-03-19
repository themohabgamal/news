import 'package:flutter/material.dart';

import 'article_card.dart';

class LatestArticlesHorizontalListView extends StatelessWidget {
  const LatestArticlesHorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            width: 180,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: ArticleCard(
              imageUrl:
                  'https://images.pexels.com/photos/97050/pexels-photo-97050.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              title: 'The 12 most intriguing animal discoveries of 2021',
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
