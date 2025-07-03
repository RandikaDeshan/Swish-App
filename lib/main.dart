import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiss_app/views/FAQHelpCenterPage/help_center_page.dart';
import 'package:swiss_app/views/PrivacyPolicyScreen/Privacy_Policy_Screen.dart';
import 'package:swiss_app/views/Profile_page/profile_screen.dart';
import 'package:swiss_app/views/Terms_&_Conditions_screen/terms_conditions.dart';
import 'package:swiss_app/views/Tournament_page/Tournament_screen.dart';
import 'package:swiss_app/views/calibration/calibration.dart';
import 'package:swiss_app/views/calibration/calibration_four.dart';
import 'package:swiss_app/views/calibration/calibration_new_five.dart';
import 'package:swiss_app/views/calibration/calibration_new_four.dart';
import 'package:swiss_app/views/calibration/calibration_new_one.dart';
import 'package:swiss_app/views/calibration/calibration_new_six.dart';
import 'package:swiss_app/views/calibration/calibration_new_three.dart';
import 'package:swiss_app/views/calibration/calibration_new_two.dart';
import 'package:swiss_app/views/calibration/calibration_one.dart';
import 'package:swiss_app/views/calibration/calibration_three.dart';
import 'package:swiss_app/views/calibration/calibration_two.dart';
import 'package:swiss_app/views/challenge_tracker/challenge_tracher_page.dart';
import 'package:swiss_app/views/change_password/change_password.dart';
import 'package:swiss_app/views/dashboard/dashboard.dart';
import 'package:swiss_app/views/email_preference/email_preference_screen.dart';
import 'package:swiss_app/views/forget_password/forgot_password.dart';
import 'package:swiss_app/views/home_page/home_page.dart';
import 'package:swiss_app/views/leaderboard_page/leaderboard_screen.dart';
import 'package:swiss_app/views/login/login_screen.dart';
import 'package:swiss_app/views/mandala_art_screen/art_home_page.dart';
import 'package:swiss_app/views/mandala_screens/coloring_screen.dart';
import 'package:swiss_app/views/mood_tracker/mood_tracker_page.dart';
import 'package:swiss_app/views/music/music_page.dart';
import 'package:swiss_app/views/music/play_page.dart';
import 'package:swiss_app/views/profile_screen_ui/profile_screen_ui.dart';
import 'package:swiss_app/views/register/register_screen.dart';
import 'package:swiss_app/views/setting_screen/setting_screen.dart';
import 'package:swiss_app/views/splash/splash_screen.dart';
import 'package:swiss_app/views/welcome_screen/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/splash': (context) => const SplashScreen(),
          '/welcome': (context) => const WelcomeScreen(),
          '/login': (context) => const LoginScreen(),
          '/register': (context) => const RegisterScreen(),
          '/forgotPassword': (context) => const ForgotPasswordScreen(),
          '/calibration': (context) => const CalibrationNewOne(),
          '/calibrationOne': (context) => const CalibrationNewTwo(),
          '/calibrationTwo': (context) => const CalibrationNewThree(),
          '/calibrationThree': (context) => const CalibrationNewFour(),
          '/calibrationFour': (context) => const CalibrationNewFive(),
          '/calibrationSix': (context) => const CalibrationNewSix(),
          '/dashboard': (context) => const Dashboard(),
          '/home': (context) => const HomePage(),
          '/music': (context) => const MusicPage(),
          '/userProfile': (context) => const UserProfilePage(),
          '/leaderboard': (context) => const LeaderboardScreen(),
          '/profileScreenUi': (context) => const ProfileScreenUi(),
          '/tournament': (context) => const HomePageTournament(),
          '/settingsScreen': (context) => const SettingsScreen(),
          '/changePassword': (context) => const ChangePassword(),
          '/emailPreferencesScreen': (context) => const EmailPreferencesScreen(),
          '/faqHelpCenterPage': (context) => const FAQHelpCenterPage(),
          '/privacyPolicyScreen': (context) => const PrivacyPolicyScreen(),
          '/termsConditionsScreen': (context) => const TermsConditionsScreen(),
          '/playPage': (context) => const PlayPage(),
          '/moodTrackerPage': (context) => const MoodTrackerPage(),
          '/challengeTrackerPage': (context) => const ChallengeTracherPage(),
          '/coloringScreen': (context) => const ColoringScreen(),
          '/artHomePage': (context) => const ArtHomePage(),
        },
        home: SplashScreen(),
      ),
    );
  }
}
