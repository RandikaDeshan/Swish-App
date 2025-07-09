import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CalibrationNewFour extends StatelessWidget {
  const CalibrationNewFour({super.key});

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
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 25.w,top: 45.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Upload your ",style: TextStyle(
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),),
                              Text("Image",style: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF9737FF),
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              SizedBox(height: 20.h,),
                              Center(
                                child: Container(
                                      width: 298.w,
                                      height: 298.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1
                                        )
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              top:0,
                                              bottom: 0,
                                              left: 0,
                                              right: 0,
                                              child: IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_outlined,size: 60,color: Colors.white,))),
                                        ],
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              SizedBox(height: 93.h,),
                              TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/calibrationFour');
                                  },
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      fixedSize: Size(MediaQuery.of(context).size.width, 45.h),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                      )
                                  ),
                                  child: Text("Add photo",style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF9654FE)
                                  ),)),
                              SizedBox(height: 19.h,),
                              TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/calibrationFour');
                                  },
                                  style: TextButton.styleFrom(
                                      backgroundColor: Color(0xFF9654FE),
                                      fixedSize: Size(MediaQuery.of(context).size.width, 45.h),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                      )
                                  ),
                                  child: Text("Skip",style: TextStyle(
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
