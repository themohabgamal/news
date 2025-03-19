import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/widgets/latest_articles_horizontal_list_view.dart';

import 'home_content_header.dart';

class HomeLatestArticlesSection extends StatelessWidget {
  const HomeLatestArticlesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeContentHeader(
          title: 'Latest Articles',
          onPressed: () {},
        ),
        LatestArticlesHorizontalListView(),
      ],
    );
  }
}
