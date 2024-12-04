import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skills')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            Chip(label: Text('Flutter')),
            Chip(label: Text('Dart')),
            Chip(label: Text('UI/UX Design')),
            Chip(label: Text('Firebase')),
            Chip(label: Text('Git')),
            Chip(label: Text('JavaScript')),
          ],
        ),
      ),
    );
  }
}
