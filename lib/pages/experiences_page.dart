import 'package:flutter/material.dart';

class ExperiencesPage extends StatelessWidget {
  const ExperiencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experiences')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Software Developer'),
            subtitle: Text('XYZ Corp - 2020-2023'),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Junior Developer'),
            subtitle: Text('ABC Inc - 2018-2020'),
          ),
        ],
      ),
    );
  }
}
