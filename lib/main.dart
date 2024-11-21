import 'package:cv_project/request_resources.dart';
import 'package:cv_project/school_details.dart';
import 'package:flutter/material.dart';
import 'admin_dashboard.dart';
import 'official_dashboard.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management System',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/admin_dashboard': (context) => AdminDashboard(),
        '/official_dashboard': (context) => OfficialDashboard(),
        '/request_resources': (context) => RequestResourcesScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/school_details') {
          final schoolId = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) {
              return SchoolDetailsScreen(schoolId: schoolId);
            },
          );
        }
        return null;
      },
    );
  }
}
