// lib/widgets/tab_bar_iphone.dart
import 'package:flutter/material.dart';
import 'tab_bar_item.dart';

class TabBarIphone extends StatelessWidget {
  const TabBarIphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 440,
          height: 83,
          child: Stack(
            children: [
              // Background Container
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 440,
                  height: 83,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.75),
                    border: Border.all(
                      width: 0.33,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
              // Tab Bar Items
              const Positioned(
                left: 15,
                top: 7,
                child: TabBarItem(
                  label: 'Home',
                  labelColor: Color(0xFF5BA37F),
                  icon: FlutterLogo(),
                ),
              ),
              const Positioned(
                left: 106,
                top: 7,
                child: TabBarItem(
                  label: 'Exercises',
                  labelColor: Color(0xFF323232),
                  icon: FlutterLogo(),
                ),
              ),
              const Positioned(
                left: 197,
                top: 7,
                child: TabBarItem(
                  label: 'Progress',
                  labelColor: Color(0xFF323232),
                  icon: FlutterLogo(),
                ),
              ),
              const Positioned(
                left: 288,
                top: 7,
                child: TabBarItem(
                  label: 'Community',
                  labelColor: Color(0xFF323232),
                  icon: FlutterLogo(),
                ),
              ),
              const Positioned(
                left: 379,
                top: 7,
                child: TabBarItem(
                  label: 'Profile',
                  labelColor: Color(0xFF323232),
                  icon: FlutterLogo(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
