import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Connect with Me:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSocialIcon(
                context,
                icon: Icons.business,
                label: 'LinkedIn',
                url: 'https://linkedin.com',
              ),
              _buildSocialIcon(
                context,
                icon: Icons.code,
                label: 'GitHub',
                url: 'https://github.com',
              ),
              _buildSocialIcon(
                context,
                icon: Icons.facebook,
                label: 'Facebook',
                url: 'https://facebook.com',
              ),
              _buildSocialIcon(
                context,
                icon: Icons.camera_alt,
                label: 'Instagram',
                url: 'https://instagram.com',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(BuildContext context,
      {required IconData icon, required String label, required String url}) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.blue),
          onPressed: () => launchUrl(Uri.parse(url)),
          tooltip: label,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
