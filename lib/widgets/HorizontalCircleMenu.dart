import 'package:flutter/material.dart';

class Horizontalcirclemenu extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const Horizontalcirclemenu({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = items[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFF242042),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      item["image"], // <-- your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  item["label"] ?? "",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}