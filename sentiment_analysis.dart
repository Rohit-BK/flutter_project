sentiment_analysis.dart

import 'package:flutter/material.dart';
import 'package:nlp.dart';

class SentimentAnalysisPage extends StatefulWidget {
  @override
  _SentimentAnalysisPageState createState() => _SentimentAnalysisPageState();
}

class _SentimentAnalysisPageState extends State<SentimentAnalysisPage> {
  String selectedLanguage = 'English';
  String selectedArticle = '';
  String sentimentResult = '';

  List<String> languages = ['English', 'Hindi', 'Urdu'];
  List<String> articles = [
    'Article 1',
    'Article 2',
    'Article 3',
  ];

  void analyzeSentiment() {
    setState(() {
      sentimentResult = NLP.analyzeSentiment(selectedArticle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sentiment Analysis'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedLanguage,
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value!;
                });
              },
              items: languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: selectedArticle,
              onChanged: (value) {
                setState(() {
                  selectedArticle = value!;
                });
              },
              items: articles.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: analyzeSentiment,
              child: Text('Analyze Sentiment'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Sentiment Result: $sentimentResult',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

