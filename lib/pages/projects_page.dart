import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Projects')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Project A'),
            subtitle: Text('A mobile app for e-commerce'),
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Project B'),
            subtitle: Text('A web dashboard for analytics'),
          ),
        ],
      ),
    );
  }
}
