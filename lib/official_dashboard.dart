import 'package:flutter/material.dart';

class OfficialDashboard extends StatelessWidget {
  // Sample data for schools
  final List<Map<String, String>> schools = [
    {'school_id': '1', 'school_name': 'Greenfield High', 'resources_needed': 'Books, Computers'},
    {'school_id': '2', 'school_name': 'Sunrise Academy', 'resources_needed': 'Furniture, Projectors'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('State Official Dashboard')),
      body: ListView.builder(
        itemCount: schools.length,
        itemBuilder: (context, index) {
          var school = schools[index];
          return ListTile(
            title: Text(school['school_name']!),
            subtitle: Text('Resources Needed: ${school['resources_needed']}'),
            onTap: () {
              Navigator.pushNamed(context, '/school_details', arguments: school['school_id']);
            },
          );
        },
      ),
    );
  }
}
