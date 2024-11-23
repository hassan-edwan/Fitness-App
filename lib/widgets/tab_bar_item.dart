import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final String label;
  final Color labelColor;
  final IconData iconData;
  final Color? iconColor;
  final double? iconSize;
  final VoidCallback onTap; // Callback for navigation

  const TabBarItem({
    required this.label,
    required this.labelColor,
    required this.iconData,
    this.iconColor = Colors.black,
    this.iconSize = 24.0,
    required this.onTap, // Make the callback required
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger navigation when tapped
      child: Container(
        width: 55,
        height: 40,
        child: Stack(
          children: [
            Positioned(
              left: label == "Community" ? -6.5 : 7.5,
              top: 28,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: labelColor,
                  fontSize: 10,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
              ),
            ),
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
