import 'package:flutter/material.dart';

import '../widgets/music_image.dart';

class EmailPreferencesScreen extends StatefulWidget {
  const EmailPreferencesScreen({super.key});

  @override
  State<EmailPreferencesScreen> createState() => _EmailPreferencesScreenState();
}

class _EmailPreferencesScreenState extends State<EmailPreferencesScreen> {
  bool newFeaturesEnabled = true;
  bool subscriptionUpdatesEnabled = true;
  bool specialOffersEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6B46C1), // Purple top
              Color(0xFF1E1B4B), // Dark purple bottom
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: Stack(
          children: [
            // Background MusicImage
            const MusicImage(),

            // Main Content
            SafeArea(
              child: Column(
                children: [
                  // Header
                  Container(
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
                          'Email Preferences',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Content
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Email Preferences Container
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0x1FD9D9D9), // #D9D9D91F
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Notification Emails title inside container
                                const Padding(
                                  padding: EdgeInsets.only(left: 4, bottom: 12),
                                  child: Text(
                                    'Notification Emails',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                _buildEmailPreferenceCard(
                                  title: 'New Features',
                                  subtitle:
                                      'Get notified about new app features',
                                  value: newFeaturesEnabled,
                                  onChanged: (value) {
                                    setState(() {
                                      newFeaturesEnabled = value;
                                    });
                                  },
                                ),
                                const SizedBox(height: 6),
                                _buildEmailPreferenceCard(
                                  title: 'Subscription Updates',
                                  subtitle:
                                      'Receive updates about subscription changes',
                                  value: subscriptionUpdatesEnabled,
                                  onChanged: (value) {
                                    setState(() {
                                      subscriptionUpdatesEnabled = value;
                                    });
                                  },
                                ),
                                const SizedBox(height: 6),
                                _buildEmailPreferenceCard(
                                  title: 'Special Offers',
                                  subtitle:
                                      'Get notified about promotions and discounts',
                                  value: specialOffersEnabled,
                                  onChanged: (value) {
                                    setState(() {
                                      specialOffersEnabled = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
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

  Widget _buildEmailPreferenceCard({
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Card(
      color: const Color(0xFF171035), // #171035 - Individual card color
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Switch(
              value: value,
              onChanged: onChanged,
              activeColor: const Color(
                0xFF6B46C1,
              ), // Purple color to match theme
              activeTrackColor: const Color(0xFF6B46C1).withOpacity(0.3),
              inactiveThumbColor: Colors.grey[400],
              inactiveTrackColor: Colors.grey[600],
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ],
        ),
      ),
    );
  }
}
