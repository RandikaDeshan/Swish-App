import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CalibrationNewSix extends StatelessWidget {
  const CalibrationNewSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
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
        child: SafeArea(
          child: Stack(
              fit: StackFit.expand,
              children:[
                Positioned(
                    top: 100,
                    left: 0,
                    right: 0,
                    child: SvgPicture.asset("assets/calibration/Union.svg", width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height, fit:BoxFit.cover,)),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 25.w,top: 53.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Daily Mood ",style: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                            ),),
                            Text("login",style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF9737FF),
                            ),),
                            Text("How are you feeling today?",style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFC48DFF)
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            SizedBox(height: 20.h,),
                            Row(
                              children: [
                                Expanded(child: Image.asset("assets/calibration/relaxed.png")),
                                SizedBox(width: 15.w,),
                                Expanded(child: Image.asset("assets/calibration/focus.png")),
                              ],
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              children: [
                                Expanded(child: Image.asset("assets/calibration/energy.png")),
                                SizedBox(width: 15.w,),
                                Expanded(child: Image.asset("assets/calibration/lazy.png")),
                              ],
                            ),
                            SizedBox(height: 69.h,),
                            TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/dashboard');
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xFF9654FE),
                                    fixedSize: Size(MediaQuery.of(context).size.width, 45.h),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    )
                                ),
                                child: Text("Save Choice",style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white
                                ),)),
                            SizedBox(height: 20.h,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),]
          ),
        ),
      ),
    );
  }
}
