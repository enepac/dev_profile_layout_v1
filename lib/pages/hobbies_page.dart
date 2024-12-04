import 'package:flutter/material.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hobbies')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Reading Books'),
          ),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Traveling'),
          ),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Cooking'),
          ),
        ],
      ),
    );
  }
}
