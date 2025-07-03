import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swiss_app/views/widgets/music_image.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
              MusicImage(),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 25.w,top: 53.h),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Change",style: TextStyle(
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),),
                              Text("Password?",style: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF9737FF),
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 51.h,),
                            Text.rich(
                              TextSpan(
                                text: "New Password",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                                ),
                                children: [
                                  TextSpan(
                                    text: "*",
                                    style: TextStyle(
                                      color: Color(0xFFDB1B24),
                                    )
                                  )
                                ]
                              )
                            ),
                            SizedBox(
                              height: 52.h,
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromRGBO(242, 243, 247, 0.07),
                                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined,color: Color(0xFFE2C8FF),)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Color.fromRGBO(151, 55, 255, 1),
                                      width: 0.15
                                    )
                                  )
                                ),
                              ),
                            ),
                            SizedBox(height: 25.h,),
                            Text.rich(
                                TextSpan(
                                    text: "Confirm New Password",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white
                                    ),
                                    children: [
                                      TextSpan(
                                          text: "*",
                                          style: TextStyle(
                                            color: Color(0xFFDB1B24),
                                          )
                                      )
                                    ]
                                )
                            ),
                            SizedBox(
                              height: 52.h,
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color.fromRGBO(242, 243, 247, 0.07),
                                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined,color: Color(0xFFE2C8FF),)),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                            color: Color.fromRGBO(151, 55, 255, 1),
                                            width: 0.15
                                        )
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 100.h,),
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
                            SizedBox(height: 20.h,)
                          ],
                        ),
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
