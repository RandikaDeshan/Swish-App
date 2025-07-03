import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/button.dart';
import '../widgets/music_image.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            MusicImage(),
            Center(
              child: Column(
                children: [
                  //welcome image
                  Image.asset(
                    'assets/welcome_screen/welcome_banner.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        //logo
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/Splash_screen/Vector (2).png',
                              width: 18.w,
                              height: 41.h,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(
                                  Icons.music_note,
                                  size: 71.r,
                                  color: Colors.white,
                                );
                              },
                            ),
                            Image.asset(
                              'assets/Splash_screen/Group.png',
                              width: 115.17.w,
                              height: 41.05.h,
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

                        //welcome text
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Button(
                          title: "Get Started",
                          onTap: (){
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                        ),

                        SizedBox(height: 10.h,)

                      ],
                    ),
                  )

                  //welcome button
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
