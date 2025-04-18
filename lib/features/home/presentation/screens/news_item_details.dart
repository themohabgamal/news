import 'package:flutter/material.dart';
import 'package:news/features/home/data/news_model.dart';
import '../widgets/bottom_rounded_container.dart';
import '../widgets/details_header.dart';
import '../widgets/gradient_overlay_container.dart';

class NewsItemDetails extends StatelessWidget {
  final News newsItem;
  const NewsItemDetails({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false, // Prevents additional scrolling
            child: Stack(
              children: [
                Image.network(
                  newsItem.imageUrl,
                  height: MediaQuery.sizeOf(context).height / 1.5,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                DetailsHeader(),
                GradientOverlayContainer(
                  newsItem: newsItem,
                ),
                BottomRoundedContainer(
                  description: newsItem.desc,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
