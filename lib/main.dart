import 'package:flutter/material.dart';
import 'components/profile_header.dart';
import 'components/social_icons.dart';
import 'pages/about_page.dart';
import 'pages/experiences_page.dart';
import 'pages/skills_page.dart';
import 'pages/projects_page.dart';
import 'pages/education_page.dart';
import 'pages/hobbies_page.dart';
import 'pages/contact_page.dart';
import 'widgets/navigation_card.dart';

void main() {
  runApp(DeveloperProfileApp());
}

class DeveloperProfileApp extends StatelessWidget {
  const DeveloperProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Developer Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/experiences': (context) => const ExperiencesPage(),
        '/skills': (context) => const SkillsPage(),
        '/projects': (context) => const ProjectsPage(),
        '/education': (context) => const EducationPage(),
        '/hobbies': (context) => const HobbiesPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/design.png',
              height: 50,
            ),
            const SizedBox(width: 8),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'D',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  'e',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  'v',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 224, 95, 56),
                  ),
                ),
                Text(
                  'e',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'l',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  'o',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                Text(
                  'p',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  'e',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  'r',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'P',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 170, 255, 59),
                  ),
                ),
                Text(
                  'r',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'o',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  'f',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                Text(
                  'i',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  'l',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  'e',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 8),
            Image.asset(
              'assets/design.png',
              height: 50,
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(16),
            children: const [
              ProfileHeader(),
              NavigationCard(
                icon: Icons.info,
                title: 'About Me',
                subtitle: 'Learn more about my journey and skills.',
                routeName: '/about',
              ),
              NavigationCard(
                icon: Icons.work,
                title: 'Experiences',
                subtitle: 'Explore my professional experience.',
                routeName: '/experiences',
              ),
              NavigationCard(
                icon: Icons.star,
                title: 'Skills',
                subtitle: 'Check out my technical expertise.',
                routeName: '/skills',
              ),
              NavigationCard(
                icon: Icons.build,
                title: 'Projects',
                subtitle: 'See the projects I have worked on.',
                routeName: '/projects',
              ),
              NavigationCard(
                icon: Icons.school,
                title: 'Education',
                subtitle: 'Learn about my academic background.',
                routeName: '/education',
              ),
              NavigationCard(
                icon: Icons.hiking,
                title: 'Hobbies',
                subtitle: 'Check out my favorite pastimes.',
                routeName: '/hobbies',
              ),
              NavigationCard(
                icon: Icons.contact_mail,
                title: 'Contact Me',
                subtitle: 'Get in touch with me directly.',
                routeName: '/contact',
              ),
              SizedBox(height: 20),
              SocialIcons(),
            ],
          ),
        ],
      ),
    );
  }
}
