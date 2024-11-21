import 'package:flutter/material.dart';

class SchoolDetailsScreen extends StatelessWidget {
  final String schoolId;

  SchoolDetailsScreen({required this.schoolId});

  // Simulate data fetching
  final Map<String, dynamic> schoolData = {
    '1': {'school_name': 'Greenfield High', 'location': 'New York', 'resources_needed': 'Books, Computers'},
    '2': {'school_name': 'Sunrise Academy', 'location': 'Los Angeles', 'resources_needed': 'Furniture, Projectors'},
  };

  @override
  Widget build(BuildContext context) {
    var school = schoolData[schoolId];

    return Scaffold(
      appBar: AppBar(title: Text('School Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: school == null
            ? Text('School not found', style: TextStyle(fontSize: 24))
            : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('School Name: ${school['school_name']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Location: ${school['location']}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Resources Needed: ${school['resources_needed']}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
