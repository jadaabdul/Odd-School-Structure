import 'package:flutter/material.dart';

class RequestResourcesScreen extends StatefulWidget {
  @override
  _RequestResourcesScreenState createState() => _RequestResourcesScreenState();
}

class _RequestResourcesScreenState extends State<RequestResourcesScreen> {
  final _resourceController = TextEditingController();

  void submitRequest() {
    // Simulate submission
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Resource request submitted')));

    // Clear the input field after submission
    _resourceController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Request Resources')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _resourceController,
              decoration: InputDecoration(labelText: 'Resource Description'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: submitRequest,
              child: Text('Submit Request'),
            ),
          ],
        ),
      ),
    );
  }
}
