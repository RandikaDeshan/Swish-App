import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/button.dart';
import '../widgets/music_image.dart';
import 'calibration_five.dart';
import 'calibration_four.dart';
import 'calibration_one.dart';
import 'calibration_three.dart';
import 'calibration_two.dart';

class Calibration extends StatefulWidget {
  const Calibration({super.key});

  @override
  State<Calibration> createState() => _CalibrationState();
}

class _CalibrationState extends State<Calibration> {
  int _currentIndex = 0;

  final List<Widget> list = [
    const CalibrationOne(),
    const CalibrationTwo(),
    const CalibrationThree(),
    const CalibrationFour(),
    const CalibrationFive(),
  ];

  void _next() {
    if (_currentIndex < list.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
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
            const MusicImage(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
              child: Column(
                children: [
                  Expanded(child: list[_currentIndex]),
                  SizedBox(height: 20.h),
                  Button(
                    title: _currentIndex < list.length - 1 ? "Next" : "Finish",
                    onTap: _next,
                  ),
                  SizedBox(height: 10.h,),
                  if (_currentIndex >= list.length - 1)
                    Text(
                      "By placing this order, you agree to the Terms of Service and Privacy Policy.renew is turned off at least 24-hours before the end of the period.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp
                      ),
                      textAlign: TextAlign.center,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
