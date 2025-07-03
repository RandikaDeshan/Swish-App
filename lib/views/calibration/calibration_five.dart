import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalibrationFive extends StatefulWidget {
  const CalibrationFive({super.key});

  @override
  State<CalibrationFive> createState() => _CalibrationFiveState();
}

class _CalibrationFiveState extends State<CalibrationFive> {

  String? selectedImagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Premium',
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
        Container(width: double.infinity,),
        Expanded(
            child: Column(
              children: [
                Text(
                  "Unlock all the power of this mobile tool and enjoy digital experience like never before!",
                  style: TextStyle(
                    color: Color(0xffC48DFF)
                  ),
                ),
                SizedBox(height: 10.h,),
                Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 10.h,),
                        Image.asset('assets/calibration/gift.png'),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            margin: EdgeInsets.symmetric(vertical: 10.h),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.w,
                                ),
                                borderRadius: BorderRadius.circular(20.r)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Annual',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(vertical: 2.w, horizontal: 7.w),
                                      decoration: BoxDecoration(
                                        color: Color(0xff26CB63),
                                        borderRadius: BorderRadius.circular(50.r)
                                      ),
                                      child: Text(
                                        'Best Value',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'First 30 days free - Then Rs.xxxx/Year',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            margin: EdgeInsets.symmetric(vertical: 10.h),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.w,
                                ),
                                borderRadius: BorderRadius.circular(20.r)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Monthly',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'First 7 days free - Then Rs.xxx/Month',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h,)
                      ],
                    ),
                )
              ],
            ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            width: MediaQuery.of(context).size.width,
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Center(
              child: Text(
                'Start 30-day free trial',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff9654FE),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
