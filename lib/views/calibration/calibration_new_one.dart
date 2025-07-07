import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalibrationNewOne extends StatefulWidget {
  const CalibrationNewOne({super.key});

  @override
  State<CalibrationNewOne> createState() => _CalibrationNewOneState();
}

class _CalibrationNewOneState extends State<CalibrationNewOne> {
  int selectedNo = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedNo = 0;
  }

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
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 220.h,
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Positioned(
                        right: 0,
                          top: 0,
                          child: Image.asset("assets/calibration/peoples.png",width: 239.w,height: 215.h,)),
                      Padding(
                        padding:  EdgeInsets.only(left: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Levels",style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),),
                            Text("Choose Your Level",style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFC48DFF)
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      InkWell(
                        onTap:(){
                          if(selectedNo == 1){
                            setState(() {
                              selectedNo = 0;
                            });
                          }else{
                            setState(() {
                              selectedNo = 1;
                            });
                          }
                        },
                        child: Container(
                          height: 95.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: selectedNo == 1 ? Colors.white : Color.fromRGBO(151, 55, 255, 1),
                              width: 2
                            )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 36.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Beginner",style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF9737FF),
                                ),),
                                SizedBox(height: 3.h,),
                                Text("Perfect for beginners to get started.",style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      InkWell(
                        onTap:(){
                          if(selectedNo == 2){
                            setState(() {
                              selectedNo = 0;
                            });
                          }else{
                            setState(() {
                              selectedNo = 2;
                            });
                          }
                        },
                        child: Container(
                          height: 95.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: selectedNo == 2 ? Colors.white : Color.fromRGBO(151, 55, 255, 1),
                                  width: 2
                              )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 36.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Intermediate",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF9737FF),
                                ),),
                                SizedBox(height: 3.h,),
                                Text("For those with some experience.",style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      InkWell(
                        onTap:(){
                          if(selectedNo == 3){
                            setState(() {
                              selectedNo = 0;
                            });
                          }else{
                            setState(() {
                              selectedNo = 3;
                            });
                          }
                        },
                        child: Container(
                          height: 95.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: selectedNo == 3 ? Colors.white : Color.fromRGBO(151, 55, 255, 1),
                                  width: 2
                              )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 36.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Expert",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF9737FF),
                                ),),
                                SizedBox(height: 3.h,),
                                Text("Challenge yourself at the highest level.",style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 54.h,),
                      TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/calibrationOne');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF9654FE),
                            fixedSize: Size(MediaQuery.of(context).size.width, 45.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            )
                          ),
                          child: Text("Next",style: TextStyle(
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
    );
  }
}
