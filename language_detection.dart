language_detection.dart

import 'package:flutter/material.dart';
import 'package:nlp.dart';

class LanguageDetectionPage extends StatefulWidget {
  @override
  _LanguageDetectionPageState createState() => _LanguageDetectionPageState();
}

class _LanguageDetectionPageState extends State<LanguageDetectionPage> {
  String detectedLanguage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Detection'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  detectedLanguage = NLP.detectLanguage();
                });
              },
              child: Text('Detect Language'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Detected Language: $detectedLanguage',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
