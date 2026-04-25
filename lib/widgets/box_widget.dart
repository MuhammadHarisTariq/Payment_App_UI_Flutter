import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  final String text;
  final Color maincolor;
  final Color secondarycolor;
  final IconData icon;
  final bool isSelected;

  const BoxWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.maincolor,
    required this.secondarycolor,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: maincolor,
        border: isSelected
            ? Border.all(color: Colors.greenAccent, width: 2)
            : null,
      ), // BoxDecoration
      child: Row(
        children: [
          Container(
            height: 70,
            width: 60,
            decoration: BoxDecoration(
              color: secondarycolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ), // BorderRadius.only
            ), // BoxDecoration
            child: Center(
              child: Icon(icon, color: Colors.white, size: 26), // Icon
            ), // Center
          ), // Container
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ), // TextStyle
              ), // Text
            ), // Padding
          ), // Expanded
        ],
      ),
    ); // Container
  }
}
