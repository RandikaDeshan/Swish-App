import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/button.dart';

class CalibrationTwo extends StatefulWidget {
  const CalibrationTwo({super.key});

  @override
  State<CalibrationTwo> createState() => _CalibrationTwoState();
}

class _CalibrationTwoState extends State<CalibrationTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How Are You',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'feeling',
                      style: TextStyle(
                        color: Color(0xff9737FF),
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' today?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 30.h),
        // Expanded(
        //   child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
        //     return Image.asset('assets/calibration/relaxed.png');
        //   },),
        // )
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Image.asset('assets/calibration/relaxed.png'),
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: Image.asset('assets/calibration/focus.png'),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/calibration/energy.png'),
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(
                    child: Image.asset('assets/calibration/lazy.png'),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
