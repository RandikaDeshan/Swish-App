import 'package:flutter/material.dart';

import '../badge_page/badge_screen.dart';
import '../widgets/music_image.dart';

class AchievementScreen extends StatelessWidget {
  const AchievementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Background MusicImage
          const MusicImage(),

          // Main Content
          Column(
            children: [
              // Fixed Header and Tabs
              SafeArea(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Section
                      const Text(
                        'Achievements & Badges',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Tab Buttons
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildTabButton('All', true),
                            const SizedBox(width: 12),
                            _buildTabButton('Earned', false),
                            const SizedBox(width: 12),
                            _buildTabButton('Locked', false),
                            const SizedBox(width: 12),
                            _buildTabButton('Challenges', false),
                            const SizedBox(width: 12),
                            _buildTabButton('Special', false),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Scrollable Content
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),

                      // Level Progress Section
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'Level ',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'Progress',
                              style: TextStyle(color: Color(0xFF8B5CF6)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Level Progress Card
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color(0xFF000000).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Level 03',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  '60/100 points',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            // Progress Bar
                            Container(
                              width: double.infinity,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0.6, // 60% completion
                                child: Container(
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: const Color(
                                      0xFF4CAF50,
                                    ), // Green progress bar
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              '60% completed',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Badges Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: '12/24 Badges ',
                                  style: TextStyle(color: Colors.white),
                                ),
                                TextSpan(
                                  text: 'Unlocked!',
                                  style: TextStyle(color: Color(0xFF8B5CF6)),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BadgesPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'See all',
                              style: TextStyle(
                                color: Color(0xFF8B5CF6),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Earned Badges
                      _buildBadgeCard(
                        'Mandala week champion',
                        '1st Place',
                        'assets/badge_page/01st.png',
                        const Color(0xFFF6B300), // Yellow
                        true,
                      ),
                      _buildBadgeCard(
                        'Completed the first mandala',
                        'Beginner level',
                        'assets/badge_page/beginner.png',
                        const Color(0xFF9737FF), // Purple
                        true,
                      ),
                      _buildBadgeCard(
                        'Color 5 patterns this week',
                        '3/5 completed',
                        'assets/badge_page/badge.png',
                        const Color(0xFF332E3F), // Dark shade
                        false,
                      ),
                      const SizedBox(height: 40),

                      // New Badges to Unlock Section
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(
                              text: 'New Badges to ',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'Unlock!',
                              style: TextStyle(color: Color(0xFF8B5CF6)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // New Badges Grid
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 1.0,
                        children: [
                          _buildLockedBadgeCard(
                            'Paintbrush\nBadge',
                            'assets/achievement_page/image01.png',
                            const Color(0xFFFFD700), // Yellow
                          ),
                          _buildLockedBadgeCard(
                            'Trophy\nBadge',
                            'assets/home_page/trophy.png',
                            const Color(0xFF87CEEB), // Light blue
                          ),
                          _buildLockedBadgeCard(
                            'Mandala\nBadge',
                            'home_page/mandala.png',
                            const Color(0xFFDEB887), // Tan
                          ),
                          _buildLockedBadgeCard(
                            'Star\nBadge',
                            'pattern_page/star.png',
                            const Color(0xFF8B5CF6), // Purple
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),

                      // Leaderboard Section
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(width: 353, height: 4, color: const Color(0xFF8B7FD9)),
                            const SizedBox(height: 20),
                            const Text(
                              'Leaderboard',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Image.asset(
                              'achievement_page/leadership.png',
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return Image.asset(
                                  'assets/achievement_page/image01.png', // Replace with your fallback image path
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                );
                              },
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              height: 48,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/leaderboard');// Placeholder
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF8B5CF6),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                                child: const Text(
                                  'Go To Leaderboard',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  Widget _buildTabButton(String text, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isActive
            ? Colors.pinkAccent.withOpacity(0.1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFFF15E5), width: 1),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildBadgeCard(
    String title,
    String subtitle,
    String imagePath,
    Color badgeColor,
    bool isEarned,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: badgeColor, // Use full color without opacity
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: badgeColor.withOpacity(0.3), width: 1),
      ),
      child: Row(
        children: [
          Icon(
            isEarned ? Icons.check_box : Icons.check_box_outline_blank,
            color: isEarned
                ? Colors.green
                : Colors.white, // White checkbox, green tick
            size: 24,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          // Always show the image, regardless of isEarned
          Image.asset(
            imagePath,
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

  Widget _buildLockedBadgeCard(
    String title,
    String imagePath,
    Color backgroundColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: backgroundColor.withOpacity(0.3), width: 1),
      ),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.emoji_events,
                  color: Colors.white.withOpacity(0.5),
                  size: 60,
                );
              },
            ),
          ),
          const Positioned(
            top: 16,
            right: 16,
            child: Icon(Icons.lock, color: Colors.white70, size: 20),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
