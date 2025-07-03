import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaintingCard extends StatelessWidget {
  const PaintingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 127.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color.fromRGBO(151, 55, 255, 0.4)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 8.w,),
          Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white
              ),
              child: Image.asset("assets/home_page/mandala.png",fit: BoxFit.cover,)),
          SizedBox(width: 11.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You have completed ",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              ),),
              Text.rich(
                  TextSpan(
                      text: "85% ",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFE89B05)
                      ),
                      children: [
                        TextSpan(
                            text: "off this paint",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        )
                      ]
                  )
              ),
              SizedBox(height: 5.h,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF5E5E5D),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                  child: Text("Geometric",style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                  ),),
                ),
              ),
              SizedBox(height: 12.h,),
              SizedBox(
                width: 180.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/coloringScreen');
                      },
                      child: Text("Continue",style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
