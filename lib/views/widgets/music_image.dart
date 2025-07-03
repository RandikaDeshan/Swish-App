import 'package:flutter/material.dart';

class MusicImage extends StatelessWidget {
  const MusicImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 18,
      child: Image.asset(
        'assets/Splash_screen/vector.png',
        width: 292,
        height: 494,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.error, size: 50, color: Colors.white);
        },
      ),
    );
  }
}
