import 'package:flutter/material.dart';
import 'package:authentication.dart';
import 'package:user_roles.dart';
import 'package:data_collection.dart';
import 'package:nlp.dart';
import 'package:document_management.dart';
import 'package:video_processing.dart';
import 'package:real_time_notifications.dart';
import 'package:dashboard.dart';
import 'package:database.dart';
import 'package:security_compliance.dart';
import 'package:scalability_performance.dart';
import 'package:reporting_analytics.dart';
import 'package:maintenance_updates.dart';
import 'package:user_training_support.dart';
import 'package:feedback_loop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '360-degree Feedback Software',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
