import 'package:flutter/material.dart';

class BadgesPage extends StatefulWidget {
  const BadgesPage({super.key});

  @override
  State<BadgesPage> createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  String selectedFilter = 'All';
  final List<String> filters = ['All', 'Active', 'Completed', 'Upcoming'];

  final List<Map<String, dynamic>> badges = [
    {
      'title': 'Speed Artist',
      'subtitle': '0/1 completed',
      'isCompleted': true,
      'status': 'Active',
      'isLocked': false,
    },
    {
      'title': '5-Day Mandala Streak',
      'subtitle': '',
      'isCompleted': true,
      'status': 'Upcoming',
      'isLocked': true,
    },
    {
      'title': '10 Mandalas Completed Badge',
      'subtitle': '0/10 completed',
      'isCompleted': true,
      'status': 'Active',
      'isLocked': false,
    },
    {
      'title': 'Mandala Legend',
      'subtitle': '3/30 completed',
      'isCompleted': true,
      'status': 'Active',
      'isLocked': false,
    },
    {
      'title': 'Weekly Runner-Up Artist',
      'subtitle': '',
      'isCompleted': true,
      'status': 'Completed',
      'isLocked': false,
    },
    {
      'title': 'Mandala Star',
      'subtitle': '0/5 completed',
      'isCompleted': true,
      'status': 'Active',
      'isLocked': false,
    },
    {
      'title': 'Monthly Mandala Master',
      'subtitle': '',
      'isCompleted': true,
      'status': 'Upcoming',
      'isLocked': true,
    },
    {
      'title': 'Color Wizard',
      'subtitle': '0/3 completed',
      'isCompleted': true,
      'status': 'Active',
      'isLocked': false,
    },
  ];

  List<Map<String, dynamic>> get filteredBadges {
    if (selectedFilter == 'All') return badges;
    return badges.where((badge) => badge['status'] == selectedFilter).toList();
  }

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
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Badges',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              // Filter Tabs
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: filters.map((filter) {
                      final isSelected = selectedFilter == filter;
                      return Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedFilter = filter;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? const Color(0xFFFF15E5).withOpacity(0.1)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color(0xFFFF15E5),
                                width: 1.5,
                              ),
                            ),
                            child: Text(
                              filter,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: isSelected
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // All Badges Section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // All Badges Header
                      const Text(
                        'All Badges',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Badge List with Scrolling
                      Expanded(
                        child: ListView.separated(
                          itemCount: filteredBadges.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final badge = filteredBadges[index];
                            return BadgeCard(badge: badge);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BadgeCard extends StatelessWidget {
  final Map<String, dynamic> badge;

  const BadgeCard({super.key, required this.badge});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF191038),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          // Checkbox with White Border and Transparent Background
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Checkbox(
              value: false,
              onChanged: null,
              checkColor: Colors.white,
              activeColor: Colors.transparent,
              side: BorderSide.none,
            ),
          ),

          const SizedBox(width: 16),
          // Music Image Widget Added Here

          // Badge Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  badge['title'],
                  style: TextStyle(
                    color: badge['isLocked'] ? Colors.white54 : Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (badge['subtitle'].isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    badge['subtitle'],
                    style: TextStyle(
                      color: badge['isCompleted']
                          ? const Color.fromARGB(255, 226, 248, 237)
                          : const Color(0xFFA1A4B2),
                      fontSize: 14,
                    ),
                  ),
                ],
              ],
            ),
          ),

          // Badge Image
          Stack(
            children: [
              Image.asset(
                'assets/badge_page/badge.png',
                width: 40,
                height: 40,
                color: badge['isCompleted']
                    ? null
                    : const Color(0xFF4A4A4A).withOpacity(0.6),
              ),
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Icon(Icons.lock,color: Colors.yellow,))
            ],
          ),
        ],
      ),
    );
  }
}
