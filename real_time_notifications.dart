real_time_notifications.dart

import 'package:flutter/material.dart';
import 'package:database.dart';

class RealTimeNotificationsPage extends StatefulWidget {
  @override
  _RealTimeNotificationsPageState createState() => _RealTimeNotificationsPageState();
}

class _RealTimeNotificationsPageState extends State<RealTimeNotificationsPage> {
  List<String> notifications = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real-time Notifications'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  notifications.add('New negative story detected');
                });
              },
              child: Text('Simulate Negative Story'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(notifications[index]),
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
