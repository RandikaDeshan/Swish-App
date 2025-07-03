import 'package:flutter/material.dart';

import '../widgets/music_image.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
              child: SingleChildScrollView(
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
                            'Setting',
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Account Section Title
                          const Padding(
                            padding: EdgeInsets.only(left: 4, bottom: 8),
                            child: Text(
                              'Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                
                          // Account Container Card
                          Flexible(
                            flex: 3,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0x1FD9D9D9), // #D9D9D91F
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: _buildSettingCard(
                                      icon: Icons.person_outline,
                                      title: 'Edit Profile',
                                      subtitle:
                                          'Change your name, photo and email',
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/userProfile',
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Flexible(
                                    child: _buildSettingCard(
                                      icon: Icons.lock_outline,
                                      title: 'Change Password',
                                      subtitle: 'Update your current password',
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/changePassword',
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Flexible(
                                    child: _buildSettingCard(
                                      icon: Icons.email_outlined,
                                      title: 'Email Preferences',
                                      subtitle: 'Manage notification emails',
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/emailPreferencesScreen',
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                
                          // Help & Support Section Title (in the middle)
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 4,
                              bottom: 8,
                              top: 16,
                            ),
                            child: Text(
                              'Help & Support',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                
                          // Help & Support Container Card
                          Flexible(
                            flex: 4,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0x1FD9D9D9), // #D9D9D91F
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: _buildSettingCard(
                                      icon: Icons.help_outline,
                                      title: 'FAQ / Help Center',
                                      subtitle: null,
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/faqHelpCenterPage',
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Flexible(
                                    child: _buildSettingCard(
                                      icon: Icons.headset_mic_outlined,
                                      title: 'Contact Support',
                                      subtitle: null,
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/challengeTrackerPage',
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Flexible(
                                    child: _buildSettingCard(
                                      icon: Icons.security_outlined,
                                      title: 'Privacy Policy',
                                      subtitle: null,
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/privacyPolicyScreen',
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Flexible(
                                    child: _buildSettingCard(
                                      icon: Icons.description_outlined,
                                      title: 'Terms & Conditions',
                                      subtitle: null,
                                      onTap: () {
                                        Navigator.pushNamed(
                                          context,
                                          '/termsConditionsScreen',
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingCard({
    required IconData icon,
    required String title,
    String? subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      color: const Color(0xFF171035), // #171035 - Individual card color
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: Colors.white, size: 18),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 11,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.white.withOpacity(0.7),
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
