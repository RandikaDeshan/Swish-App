import 'package:flutter/material.dart';

import 'mood_logging_page.dart';

class MoodSelectionPage extends StatelessWidget {
  const MoodSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFF5D4094), Color(0xFF00152A)],
            stops: [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Background union.png image from bottom
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/mood_selection_page/Union.png',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              // Main content
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title at top left
                    RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'How are you\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'feeling',
                            style: TextStyle(
                              color: Color(0xFFB57EDC),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' today?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Choose your mood on this moment:',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    const Spacer(),
                    // Mood images without containers
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildMoodImage('assets/mood_selection_page/relaxed.png'),
                            _buildMoodImage('assets/mood_selection_page/focused.png'),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildMoodImage(
                              'assets/mood_selection_page/energetic.png',
                            ),
                            _buildMoodImage('assets/mood_selection_page/lazy.png'),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    // Next button at bottom
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MoodLoggingPage(),
                            ), // Replace with actual widget
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF9654FE),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMoodImage(String assetPath) {
    return GestureDetector(
      onTap: () {
        // Add mood selection logic here
      },
      child: Image.asset(
        assetPath,
        width: 169,
        height: 203,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: 169,
            height: 203,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(Icons.mood, color: Colors.white, size: 60),
          );
        },
      ),
    );
  }
}
