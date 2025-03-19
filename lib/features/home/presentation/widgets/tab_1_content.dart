import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/widgets/article_card.dart';

class Tab1Content extends StatelessWidget {
  const Tab1Content({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Section Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest Articles',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to "View All" page
                    print('View All clicked');
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // List of Articles
          ListView.builder(
            itemCount: 6, // Number of articles
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ArticleCard(
                imageUrl:
                    'https://images.pexels.com/photos/97050/pexels-photo-97050.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', // Placeholder image
                title: 'Article Title ${index + 1}',
                onReadMore: () {
                  // Handle "Read More" button click
                  print('Read More clicked for Article ${index + 1}');
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
