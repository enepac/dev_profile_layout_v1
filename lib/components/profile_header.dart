import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Developer Profile Title Container
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 194, 67, 58),
                Colors.orange,
                Color.fromARGB(255, 31, 28, 0)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text(
            'Elon Musk makes rockets, I make apps—but trust me, my code will also take your company to the stars.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 238, 235, 235),
            ),
          ),
        ),
        // Profile Information Container
        Container(
          padding: const EdgeInsets.all(16), // Add padding inside the container
          margin: const EdgeInsets.only(
              bottom: 16), // Add margin below the container
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 232, 240, 254), // Background color
            borderRadius: BorderRadius.circular(12), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Subtle shadow
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_placeholder.jpg'),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enrico Epifanio Acha',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.orange,
                              offset: Offset(2.0, 2.0),
                            ),
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.yellow,
                              offset: Offset(-2.0, 2.0),
                            ),
                          ])),
                  Text('Software Developer',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 47, 37, 136))),
                  Row(
                    children: [
                      Text('React and Flutter Jedi',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 47, 37, 136))),
                      SizedBox(width: 8),
                      Icon(Icons.flutter_dash, color: Colors.blue, size: 20),
                      SizedBox(width: 4),
                      Icon(Icons.code, color: Colors.blue, size: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
