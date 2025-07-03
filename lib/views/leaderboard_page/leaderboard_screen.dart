import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF8B5FBF), // Purple top
              Color(0xFF1A1B3A), // Dark blue bottom
            ],
          ),
        ),
        child: Stack(
          children: [
            // Background image positioned in purple area near blue frame
            Positioned(
              top: 110,
              right: 0,
              child: Image.asset(
                'assets/leaderboard_page/bgImage.png',

                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),

            SafeArea(
              child: Column(
                children: [
                  // Header
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        const Text(
                          'Leaderboard',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Last week winners',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Top 3 Winners Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(
                      height: 250,
                      child: Stack(
                        children: [
                          // 1st Place (Center) - Positioned at top center
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            child: _buildTopWinner(
                              position: '1st',
                              imagePath: 'assets/home_page/steve.png',
                              borderPath: 'assets/leaderboard_page/01st_border.png',
                              showCrown: true,
                              isFirst: true,
                            ),
                          ),

                          // 2nd Place (Left) - Positioned lower than 1st
                          Positioned(
                            left: 20,
                            bottom: 40,
                            child: _buildTopWinner(
                              position: '2nd',
                              imagePath: 'assets/leaderboard_page/02nd.png',
                              borderPath: 'assets/leaderboard_page/02nd_border.png',
                              showCrown: false,
                              isFirst: false,
                            ),
                          ),

                          // 3rd Place (Right) - Positioned lower than 1st
                          Positioned(
                            right: 20,
                            bottom: 40,
                            child: _buildTopWinner(
                              position: '3rd',
                              imagePath: 'assets/leaderboard_page/03rd.png',
                              borderPath: 'assets/leaderboard_page/03rd_border.png',
                              showCrown: false,
                              isFirst: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Blue Frame Background with Leaderboard List
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/leaderboard_page/blue_frame.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF1A1B3A).withOpacity(0.9),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                _buildLeaderboardItem(
                                  rank: '4th',
                                  name: 'Jane Cooper',
                                  points: '250',
                                  imagePath: 'assets/leaderboard_page/04th.png',
                                ),
                                const SizedBox(height: 12),
                                _buildLeaderboardItem(
                                  rank: '5th',
                                  name: 'Wade Warren',
                                  points: '240',
                                  imagePath: 'assets/leaderboard_page/05th.png',
                                ),
                                const SizedBox(height: 12),
                                _buildLeaderboardItem(
                                  rank: '6th',
                                  name: 'Leslie Alexander',
                                  points: '235',
                                  imagePath: 'assets/leaderboard_page/06th.png',
                                  nameColor: const Color(0xFFFF6B9D),
                                ),
                                const SizedBox(height: 12),
                                _buildLeaderboardItem(
                                  rank: '7th',
                                  name: 'Guy Hawkins',
                                  points: '210',
                                  imagePath: 'assets/leaderboard_page/07th.png',
                                ),
                                const SizedBox(height: 12),
                                _buildLeaderboardItem(
                                  rank: '8th',
                                  name: 'Jacob Jones',
                                  points: '190',
                                  imagePath: 'assets/leaderboard_page/08th.png',
                                  showBanner: true,
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
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
    );
  }

  Widget _buildTopWinner({
    required String position,
    required String imagePath,
    required String borderPath,
    required bool showCrown,
    required bool isFirst,
  }) {
    double imageSize = isFirst ? 100 : 80;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Position text at top for 2nd and 3rd place only
        if (!isFirst) ...[
          Text(
            position,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
        ],

        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Border frame - positioned properly on ALL images
            Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(borderPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Main profile image inside the border
            Container(
              width: imageSize - 10, // Slightly smaller to show border
              height: imageSize - 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: position == '1st'
                      ? const Color(0xFFFFD700)
                      : position == '2nd'
                      ? const Color(0xFF6B73FF)
                      : const Color(0xFF4ECDC4),
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.person, color: Colors.grey),
                    );
                  },
                ),
              ),
            ),

            // Crown for 1st place
            if (showCrown)
              Positioned(
                top: -20,
                child: Image.asset(
                  'assets/leaderboard_page/crown.png',
                  width: 40,
                  height: 30,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 40,
                      height: 30,
                      decoration: const BoxDecoration(color: Color(0xFFFFD700)),
                      child: const Icon(
                        Icons.emoji_events,
                        color: Colors.white,
                        size: 24,
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildLeaderboardItem({
    required String rank,
    required String name,
    required String points,
    required String imagePath,
    Color nameColor = Colors.white,
    bool showBanner = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Stack(
        children: [
          Row(
            children: [
              // Profile Image
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF2A3B5C), width: 1),
                ),
                child: ClipOval(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[600],
                        child: const Icon(Icons.person, color: Colors.grey),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: 16),

              // Name and Rank
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: nameColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '$rank Place',
                      style: const TextStyle(
                        color: Color(0xFF8B9DC3),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              // Points
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    points,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Points',
                    style: TextStyle(
                      color: Color(0xFF8B9DC3),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StripePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    const stripeWidth = 8.0;

    for (double x = 0; x < size.width + stripeWidth; x += stripeWidth * 2) {
      // Yellow stripe
      paint.color = const Color(0xFFFFD700);
      canvas.drawRect(Rect.fromLTWH(x, 0, stripeWidth, size.height), paint);

      // Black stripe
      paint.color = Colors.black;
      canvas.drawRect(
        Rect.fromLTWH(x + stripeWidth, 0, stripeWidth, size.height),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
