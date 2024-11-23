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
                    iconData: Icons.home,
                    onTap: () {
                      Navigator.pushNamed(context, '/'); // Navigate to Home
                    },
                  ),
                  TabBarItem(
                    iconData: Icons.fitness_center,
                    onTap: () {
                      Navigator.pushNamed(context, '/exercises'); // Navigate to Exercises
                    },
                  ),
                  TabBarItem(
                    iconData: Icons.show_chart,
                    onTap: () {
                      Navigator.pushNamed(context, '/progress'); // Navigate to Progress
                    },
                  ),
                  TabBarItem(
                    iconData: Icons.group,
                    iconColor: Colors.blue,
                    onTap: () {
                      Navigator.pushNamed(context, '/community'); // Navigate to Community
                    },
                  ),
                  TabBarItem(
                    iconData: Icons.person,
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
