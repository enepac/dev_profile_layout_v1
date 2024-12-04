import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Me')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'I am a software developer skilled in Flutter, Dart, and UI/UX design. '
          'I enjoy building scalable and efficient mobile applications.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
