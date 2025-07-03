import 'package:flutter/material.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Color.fromRGBO(151, 55, 255, 0.82), // Use full color without opacity
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color.fromRGBO(151, 55, 255, 0.82).withOpacity(0.3), width: 1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check_box,
            color:Colors.green, // White checkbox, green tick
            size: 24,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Completed the first mandala",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Beginner level",
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          // Always show the image, regardless of isEarned
          Image.asset(
            "assets/badge_page/beginner.png",
            width: 40,
            height: 40,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.image_not_supported,
                color: Colors.white,
                size: 24,
              );
            },
          ),
        ],
      ),
    );
  }
}
