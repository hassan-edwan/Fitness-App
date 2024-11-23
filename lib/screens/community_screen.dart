import 'package:flutter/material.dart';
import '../widgets/tab_bar_item.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white.withOpacity(0.9),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabBarItem(
                    label: 'Home',
                    labelColor: Color.fromARGB(255, 0, 0, 0),
                    iconData: Icons.home,
                    iconColor: Colors.blue,
                    onTap: () {
                      Navigator.pushNamed(context, '/'); // Navigate to Home
                    },
                  ),
                  TabBarItem(
                    label: 'Exercises',
                    labelColor: Color.fromARGB(255, 0, 0, 0),
                    iconData: Icons.fitness_center,
                    iconColor: Color.fromARGB(255, 0, 0, 0),
                    onTap: () {
                      Navigator.pushNamed(context, '/exercises'); // Navigate to Exercises
                    },
                  ),
                  TabBarItem(
                    label: 'Progress',
                    labelColor: Color.fromARGB(255, 0, 0, 0),
                    iconColor: Color.fromARGB(255, 0, 0, 0),
                    iconData: Icons.show_chart,
                    onTap: () {
                      Navigator.pushNamed(context, '/progress'); // Navigate to Progress
                    },
                  ),
                  TabBarItem(
                    label: 'Community',
                    labelColor: Color.fromARGB(255, 0, 0, 0),
                    iconColor: Colors.blue,
                    iconData: Icons.group,
                    onTap: () {
                      Navigator.pushNamed(context, '/community'); // Navigate to Community
                    },
                  ),
                  TabBarItem(
                    label: 'Profile',
                    labelColor: Color(0xFF323232),
                    iconData: Icons.person,
                    iconColor: const Color.fromARGB(255, 0, 0, 0),
                    onTap: () {
                      Navigator.pushNamed(context, '/profile'); // Navigate to Profile
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
