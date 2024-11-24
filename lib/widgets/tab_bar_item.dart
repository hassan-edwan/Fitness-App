import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final IconData iconData;
  final Color? iconColor;
  final double? iconSize;
  final VoidCallback onTap; // Callback for navigation

  const TabBarItem({
    required this.iconData,
    this.iconColor = Colors.black,
    this.iconSize = 24.0,
    required this.onTap, // Make the callback required
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger navigation when tapped
      child: SizedBox(
        width: 55,
        height: 40,
        child: Stack(
          children: [
            Positioned(
              left: 12,
              top: -1,
              child: Icon(
                iconData,
                color: iconColor,
                size: iconSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
