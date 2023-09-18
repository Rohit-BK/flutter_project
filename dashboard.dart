dashboard.dart

import 'package:flutter/material.dart';
import 'package:database.dart';
import 'package:reporting_analytics.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<NewsArticle> newsArticles = [];
  List<VideoSegment> videoSegments = [];

  @override
  void initState() {
    super.initState();
    fetchNewsArticles();
    fetchVideoSegments();
  }

  void fetchNewsArticles() {
    // TODO: Implement logic to fetch news articles from the database
    // You can use a mock implementation for now
    setState(() {
      newsArticles = Database.getNewsArticles();
    });
  }

  void fetchVideoSegments() {
    // TODO: Implement logic to fetch video segments from the database
    // You can use a mock implementation for now
    setState(() {
      videoSegments = Database.getVideoSegments();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'News Articles',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: newsArticles.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(newsArticles[index].title),
                    subtitle: Text(newsArticles[index].source),
                    trailing: Text(newsArticles[index].tonality),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Video Segments',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: videoSegments.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(videoSegments[index].title),
                    subtitle: Text(videoSegments[index].department),
                    trailing: Text(videoSegments[index].tonality),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewsArticle {
  final String title;
  final String source;
  final String tonality;

  NewsArticle({
    required this.title,
    required this.source,
    required this.tonality,
  });
}

class VideoSegment {
  final String title;
  final String department;
  final String tonality;

  VideoSegment({
    required this.title,
    required this.department,
    required this.tonality,
  });
}
