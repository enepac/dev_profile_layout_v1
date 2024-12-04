import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Education')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.school),
            title: Text('B.Sc in Computer Science'),
            subtitle: Text('University of XYZ - 2015-2019'),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('High School Diploma'),
            subtitle: Text('ABC High School - 2013-2015'),
          ),
        ],
      ),
    );
  }
}
