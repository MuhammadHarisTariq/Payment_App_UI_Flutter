import 'package:flutter/material.dart';

class HorizontalMenuList extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const HorizontalMenuList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110, // little extra space for safety
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
                  decoration: BoxDecoration(
                    color: const Color(0XFF242042),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Icon(item["icon"], color: Colors.white, size: 26),
                ),

                const SizedBox(height: 6),

                Text(
                  item["label"] ?? "", // 👈 SAFE NULL CHECK
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFFAAAAAA), // 👈 important (visible)
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
