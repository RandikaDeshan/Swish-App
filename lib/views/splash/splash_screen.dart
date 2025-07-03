import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/music_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    navigateToTheWelcomeScreenAfter2seconds();
    super.initState();
  }

  void navigateToTheWelcomeScreenAfter2seconds() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/welcome');
    });
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
            colors: [
              Color(0xFF5D4094),
              Color(0xFF00152A),
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/Splash_screen/Vector (2).png',
                      width: 42.w,
                      height: 71.h,
                      errorBuilder: (context, error, stackTrace) {
                        return  Icon(
                          Icons.music_note,
                          size: 71.r,
                          color: Colors.white,
                        );
                      },
                    ),
                    SizedBox(width: 10.w,),
                    Image.asset(
                      'assets/Splash_screen/Group.png',
                      width: 145.17.w,
                      height: 71.05.h,
                      errorBuilder: (context, error, stackTrace) {
                        return Text(
                          'Swish Stroke',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            MusicImage()
          ],
        ),
      ),
    );
  }
}
