import 'package:flutter/material.dart';
import 'package:user_roles.dart';
import 'package:data_collection.dart';
import 'package:dashboard.dart';

class UserInterfacePage extends StatefulWidget {
  @override
  _UserInterfacePageState createState() => _UserInterfacePageState();
}

class _UserInterfacePageState extends State<UserInterfacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Interface'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (UserRoles.isAdmin())
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DataCollectionPage()),
                  );
                },
                child: Text('Data Collection'),
              ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                );
              },
              child: Text('Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
