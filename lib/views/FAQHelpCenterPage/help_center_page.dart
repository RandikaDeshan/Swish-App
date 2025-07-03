import 'package:flutter/material.dart';

import '../widgets/music_image.dart';

class FAQHelpCenterPage extends StatelessWidget {
  const FAQHelpCenterPage({super.key});

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
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  // Header with back button
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'FAQ / Help Center',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Content area with rectangle background (369x480)
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 20.0),
                        width: 369,
                        height: 480,
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: const Color(0x1FD9D9D9), // #D9D9D91F
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: [
                            // FAQ Items
                            FAQCard(
                              question: "How do I join a tournament?",
                              onTap: () {
                                // Handle tap
                                print("How do I join a tournament? tapped");
                              },
                            ),
                            const SizedBox(height: 16),

                            FAQCard(
                              question: "How do I join a tournament?",
                              onTap: () {
                                // Handle tap
                                print(
                                  "How do I join a tournament? (second) tapped",
                                );
                              },
                            ),
                            const SizedBox(height: 16),

                            FAQCard(
                              question: "How to reset my password?",
                              onTap: () {
                                // Handle tap
                                print("How to reset my password? tapped");
                              },
                            ),

                            // Spacer to push content to top
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // MusicImage widget
            const MusicImage(),
          ],
        ),
      ),
    );
  }
}

class FAQCard extends StatelessWidget {
  final String question;
  final VoidCallback onTap;

  const FAQCard({super.key, required this.question, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        decoration: BoxDecoration(
          color: const Color(0xFF191038), // #191038
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            const Icon(Icons.add, color: Colors.white, size: 20),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                question,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
