import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Me')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
              icon: const Icon(Icons.email),
              label: const Text('Email: mando@exmpl.com'),
              onPressed: () =>
                  launchUrl(Uri.parse('mailto:your.email@example.com')),
            ),
            TextButton.icon(
              icon: const Icon(Icons.phone),
              label: const Text('Phone: +123456789'),
              onPressed: () => launchUrl(Uri.parse('tel:+123456789')),
            ),
            TextButton.icon(
              icon: const Icon(Icons.web),
              label: const Text('Website: mywebsite_notyourwebsite.com'),
              onPressed: () => launchUrl(Uri.parse('https://yourwebsite.com')),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/profile_placeholder.jpg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
