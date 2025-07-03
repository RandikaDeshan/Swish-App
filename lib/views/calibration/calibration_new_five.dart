import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CalibrationNewFive extends StatefulWidget {
  const CalibrationNewFive({super.key});

  @override
  State<CalibrationNewFive> createState() => _CalibrationNewFiveState();
}

class _CalibrationNewFiveState extends State<CalibrationNewFive> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
                          Text.rich(
                              TextSpan(
                                  text: "Get ",
                                  style: TextStyle(
                                    fontSize: 32.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: "Premium",
                                        style: TextStyle(
                                            color: Color(0xFF9737FF),
                                        )
                                    )
                                  ]
                              )
                          ),
                          Text("Unlock all the power of this mobile tool and\nenjoy digital experience like never before!",style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFC48DFF)
                          ),textAlign: TextAlign.justify,),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          SizedBox(height: 20.h,),
                          Image.asset("assets/calibration/gift.png"),
                          SizedBox(height: 20.h,),
                          InkWell(
                            onTap: () {
                              if(num==1){
                                setState(() {
                                  num=0;
                                });
                              }else{
                                setState(() {
                                  num = 1;
                                });
                              }
                            },
                            child: Container(
                              height: 86.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: num == 1 ? Colors.white : Colors.transparent
                                )
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text("Annual",style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF26CB63),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 5.h),
                                            child: Text("Best Value",style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),),
                                          ),
                                        )
                                      ],
                                    ),
                                    Text("First 30 days free - Then Rs.xxxx/Year",style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 7.h,),
                          InkWell(
                            onTap: () {
                              if(num==2){
                                setState(() {
                                  num=0;
                                });
                              }else{
                                setState(() {
                                  num = 2;
                                });
                              }
                            },
                            child: Container(
                              height: 86.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                      color: num == 2 ? Colors.white : Colors.transparent
                                  )
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Monthly",style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),),
                                    Text("First 7 days free - Then Rs.xxx/Month",style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 46.h,),
                          TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/dashboard');
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  fixedSize: Size(MediaQuery.of(context).size.width, 45.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  )
                              ),
                              child: Text("Start 30-day free trial",style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF9654FE)
                              ),)),
                          SizedBox(height: 19.h,),
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
                              child: Text(num == 0 ?"continue" : "Learn More",style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),)),
                          SizedBox(height: 20.h,),
                          Text("By placing this order, you agree to the Terms of Service and Privacy Policy. Subscription automatically renews unless auto-renew is turned off at least 24-hours before the end of the current period.",style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),textAlign: TextAlign.center,),
                        ],
                      ),
                    )
                  ],
                ),
              ),]
        ),
      ),
    );
  }
}
