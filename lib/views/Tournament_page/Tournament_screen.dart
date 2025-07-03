import 'package:flutter/material.dart';

import '../achievements_badges_page.dart/achievement_screen.dart';
import '../widgets/music_image.dart';

class HomePageTournament extends StatefulWidget {
  const HomePageTournament({super.key});

  @override
  State<HomePageTournament> createState() => _HomePageTournamentState();
}

class _HomePageTournamentState extends State<HomePageTournament> {
  int _selectedTabIndex = 0;

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
            // Background MusicImage
            const MusicImage(),
      
            // Main Content
            _selectedTabIndex == 1
                ? const AchievementScreen()
                : Column(
                    children: [
                      // Conditionally show header and tabs
                      SafeArea(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Header Section with purple "Tournaments"
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Tournaments',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 24),
      
                              // Tab Buttons
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/leaderboard');
                                      },
                                        child: _buildTabButton('Active Tournament', 0)),
                                    const SizedBox(width: 12),
                                    _buildTabButton('Achievements & Badges', 1),
                                    const SizedBox(width: 12),
                                    _buildTabButton('Upcoming Tournament', 2),
                                    const SizedBox(width: 12),
                                    _buildTabButton('Completed Tournament', 3),
                                    const SizedBox(width: 12),
                                    _buildTabButton('Rewards', 4),
                                    const SizedBox(width: 12),
                                    _buildTabButton('Rules', 5),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
      
                      // Scrollable Content
                      Expanded(child: _buildTournamentContent()),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabButton(String text, int index) {
    bool isActive = _selectedTabIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTabIndex = index;
        });
      },
      child: Container(
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
      ),
    );
  }

  Widget _buildTournamentContent() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          // Active Tournaments Section
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Active ',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: 'Tournaments',
                  style: TextStyle(color: Color(0xFF8B5CF6)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Active Tournament Card
          _buildTournamentCard(
            'Join our weekly journey into color, calm, and creativity.',
            'Joined',
            Colors.green,
            'home_page/geometric.png',
            true,
          ),
          const SizedBox(height: 40),

          // Upcoming Tournaments Section
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Upcoming ',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: 'Tournaments',
                  style: TextStyle(color: Color(0xFF8B5CF6)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Upcoming Tournament Card
          _buildTournamentCard(
            'Spin your creativity daily — today\'s circle awaits!',
            'Join',
            const Color(0xFF7B68EE),
            'home_page/mandala.png',
            false,
          ),
          const SizedBox(height: 40),

          // Completed Tournaments Section
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              children: [
                TextSpan(
                  text: 'Completed ',
                  style: TextStyle(color: Colors.white),
                ),
                TextSpan(
                  text: 'Tournaments',
                  style: TextStyle(color: Color(0xFF8B5CF6)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Single Completed Tournament Card
          _buildCompletedTournamentCard(
            'Bring balance to your day with a beautiful mandala.',
            'home_page/mandala.png',
          ),
          const SizedBox(height: 40),

          // Common Rules Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                      text: 'Common ',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextSpan(
                      text: 'Rules',
                      style: TextStyle(color: Color(0xFF8B5CF6)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF2D1B69).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRuleItem('⏰', 'Time-Limited Drawing'),
                    _buildRuleItem('🎨', 'Color Usage Counts'),
                    _buildRuleItem('👤', 'One Entry Per Person Per Round'),
                    _buildRuleItem('📅', 'Follow Deadlines'),
                    _buildRuleItem('🤝', 'Fair Play'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTournamentCard(
    String description,
    String buttonText,
    Color buttonColor,
    String imagePath,
    bool isJoined,
  ) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 380),
      height: 127,
      decoration: BoxDecoration(
        color: const Color(0xFF8B5CF6).withOpacity(0.3),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color(0xFF8B5CF6).withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imagePath,
                      width: 95,
                      height: 95,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.filter_vintage,
                          size: 40,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ),
                          children: [
                            TextSpan(
                              text: description.contains('creativity')
                                  ? description.substring(
                                      0,
                                      description.indexOf('creativity'),
                                    )
                                  : description,
                            ),
                            if (description.contains('creativity'))
                              const TextSpan(
                                text: 'creativity',
                                style: TextStyle(
                                  color: Color(0xFFFFD700),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            if (description.contains('creativity'))
                              TextSpan(
                                text: description.substring(
                                  description.indexOf('creativity') + 10,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompletedTournamentCard(String description, String imagePath) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 380),
      height: 127,
      decoration: BoxDecoration(
        color: const Color(0xFF8B5CF6).withOpacity(0.3),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color(0xFF8B5CF6).withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imagePath,
                      width: 85,
                      height: 85,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.filter_vintage,
                          size: 35,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                          children: [
                            TextSpan(
                              text: description.contains('balance')
                                  ? description.substring(
                                      0,
                                      description.indexOf('balance'),
                                    )
                                  : description,
                            ),
                            if (description.contains('balance'))
                              const TextSpan(
                                text: 'balance',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 176, 153, 19),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            if (description.contains('balance'))
                              TextSpan(
                                text: description.substring(
                                  description.indexOf('balance') + 7,
                                ),
                              ),
                          ],
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Completed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRuleItem(String emoji, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            alignment: Alignment.center,
            child: Text(emoji, style: const TextStyle(fontSize: 18)),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubscriptionSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
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
          Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFF8B5CF6).withOpacity(0.3),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFF8B5CF6), width: 2),
              ),
              child: const Icon(
                Icons.emoji_events, // Replaced Icons.tournament
                color: Color(0xFFFF15E5),
                size: 40,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                print('Navigating to Leaderboard');
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
    );
  }
}
