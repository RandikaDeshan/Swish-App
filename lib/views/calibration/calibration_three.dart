import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/button.dart';

class CalibrationThree extends StatefulWidget {
  const CalibrationThree({super.key});

  @override
  State<CalibrationThree> createState() => _CalibrationThreeState();
}

class _CalibrationThreeState extends State<CalibrationThree> {
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
                'Select Your',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'music',
                style: TextStyle(
                  color: Color(0xffC48DFF),
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/calibration/song1.png'),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Life of Hope',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Leo Mano',
                                style: TextStyle(
                                  color: Color(0xff9737FF),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(20.r))
                                ),
                                child: Text(
                                  'Relax',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.play_circle, color: Colors.white, size: 40.sp,)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/calibration/song2.png'),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Walking on Sunshine',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Katrina',
                                style: TextStyle(
                                  color: Color(0xff9737FF),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(20.r))
                                ),
                                child: Text(
                                  'Relax',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.play_circle, color: Colors.white, size: 40.sp,)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/calibration/song3.png'),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Good Day',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Leo Mano',
                                style: TextStyle(
                                  color: Color(0xff9737FF),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(20.r))
                                ),
                                child: Text(
                                  'Relax',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.play_circle, color: Colors.white, size: 40.sp,)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2.w,
                      ),
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/calibration/song4.png'),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dont lie to me',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Leo Mano',
                                style: TextStyle(
                                  color: Color(0xff9737FF),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(Radius.circular(20.r))
                                ),
                                child: Text(
                                  'Relax',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.play_circle, color: Colors.white, size: 40.sp,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
