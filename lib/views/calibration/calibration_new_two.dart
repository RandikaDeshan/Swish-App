import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CalibrationNewTwo extends StatefulWidget {
  const CalibrationNewTwo({super.key});

  @override
  State<CalibrationNewTwo> createState() => _CalibrationNewTwoState();
}

class _CalibrationNewTwoState extends State<CalibrationNewTwo> {

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
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 25.w,top: 45.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("How are you",style: TextStyle(
                                      fontSize: 32.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                  ),),
                                  Text.rich(
                                    TextSpan(
                                      text: "feeling ",
                                      style: TextStyle(
                                          fontSize: 32.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF9737FF),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "today?",
                                          style: TextStyle(
                                            color: Colors.white
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                  Text("Choose your mood on this moment",style: TextStyle(
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
                                  Expanded(child: InkWell(
                                    onTap: () {
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
                                        decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: selectedNo == 1 ? Colors.white : Colors.transparent,
                                            width: 2
                                          )
                                        ),
                                        child: Image.asset("assets/calibration/relaxed.png",fit: BoxFit.cover,)),
                                  )),
                                  SizedBox(width: 15.w,),
                                  Expanded(child: InkWell(
                                    onTap: () {
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
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(
                                                color: selectedNo == 2 ? Colors.white : Colors.transparent,
                                                width: 2
                                            )
                                        ),
                                        child: Image.asset("assets/calibration/focus.png",fit: BoxFit.cover,)),
                                  )),
                                ],
                              ),
                              SizedBox(height: 15.h,),
                              Row(
                                children: [
                                  Expanded(child: InkWell(
                                    onTap: () {
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
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(
                                                color: selectedNo == 3 ? Colors.white : Colors.transparent,
                                                width: 2
                                            )
                                        ),
                                        child: Image.asset("assets/calibration/energy.png",fit: BoxFit.cover,)),
                                  )),
                                  SizedBox(width: 15.w,),
                                  Expanded(child: InkWell(
                                    onTap: () {
                                      if(selectedNo == 4){
                                        setState(() {
                                          selectedNo = 0;
                                        });
                                      }else{
                                        setState(() {
                                          selectedNo = 4;
                                        });
                                      }
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(
                                                color: selectedNo == 4 ? Colors.white : Colors.transparent,
                                                width: 2
                                            )
                                        ),
                                        child: Image.asset("assets/calibration/lazy.png",fit: BoxFit.cover,)),
                                  )),
                                ],
                              ),
                              SizedBox(height: 69.h,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/calibrationTwo');
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
                              SizedBox(height: 80.h,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),]
          ),
        ),
      ),
    );
  }
}
