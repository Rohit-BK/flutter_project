categorization.dart

import 'package:flutter/material.dart';

class CategorizationPage extends StatefulWidget {
  @override
  _CategorizationPageState createState() => _CategorizationPageState();
}

class _CategorizationPageState extends State<CategorizationPage> {
  bool isCategorizingData = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorization'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isCategorizingData = true;
                });
                // TODO: Implement logic to categorize video segments and tonality
              },
              child: Text('Categorize Data'),
            ),
            SizedBox(height: 16.0),
            if (isCategorizingData)
              CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
