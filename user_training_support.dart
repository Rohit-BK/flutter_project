user_training_support.dart

import 'package:flutter/material.dart';

class UserTrainingSupportPage extends StatefulWidget {
  @override
  _UserTrainingSupportPageState createState() => _UserTrainingSupportPageState();
}

class _UserTrainingSupportPageState extends State<UserTrainingSupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Training and Support'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'User Training and Support',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Training:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Conduct training sessions for PIB officers and other users on how to effectively use the software.',
            ),
            Text(
              '2. Provide detailed documentation and user manuals explaining the functionalities and features of the software.',
            ),
            Text(
              '3. Offer hands-on training with real-world examples and scenarios to ensure users understand the software\'s capabilities.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Support:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Establish a dedicated support channel (e.g., email, phone) for users to report issues and seek assistance.',
            ),
            Text(
              '2. Provide timely responses and resolutions to user queries and problems.',
            ),
            Text(
              '3. Continuously monitor and analyze user feedback to identify areas for improvement and address any recurring issues.',
            ),
          ],
        ),
      ),
    );
  }
}
