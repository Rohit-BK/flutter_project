database.dart

import 'package:flutter/material.dart';

class Database {
  static List<Map<String, dynamic>> newsArticles = [];
  static List<Map<String, dynamic>> videoTranscripts = [];
  static List<Map<String, dynamic>> newsClippings = [];

  static void addNewsArticle(Map<String, dynamic> article) {
    newsArticles.add(article);
  }

  static void addVideoTranscript(Map<String, dynamic> transcript) {
    videoTranscripts.add(transcript);
  }

  static void addNewsClipping(Map<String, dynamic> clipping) {
    newsClippings.add(clipping);
  }

  static List<Map<String, dynamic>> getNewsArticles() {
    return newsArticles;
  }

  static List<Map<String, dynamic>> getVideoTranscripts() {
    return videoTranscripts;
  }

  static List<Map<String, dynamic>> getNewsClippings() {
    return newsClippings;
  }
}
