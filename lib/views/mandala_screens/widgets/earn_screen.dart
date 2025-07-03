import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EarnScreen extends StatelessWidget {
  const EarnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.w,
      height: 280.h,
      decoration: BoxDecoration(
        color: Color.fromRGBO(51, 46, 63, 0.83),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            SizedBox(height: 16.h,),
            Container(
              width: 76.w,
              height: 76.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(colors: [
                    Color.fromRGBO(232, 170, 10, 1),
                    Color.fromRGBO(151, 55, 255, 1)
                  ])
              ),
              child: Image.asset("assets/coloring_screen/Group 6863.png",width: 62.w,height: 54.h,),
            ),
            SizedBox(height: 8.h,),
            Text("You have earned new trophy",style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFF8F8F8),
            ),),
            SizedBox(height: 15.h,),
            Text("Congratulations!",style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xFF9654FE),
            ),),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 3.w,
              children: [
                SvgPicture.asset("assets/coloring_screen/material-symbols_task-alt.svg"),
                Text("Achievement completed",style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFF8F8F8),
                ),),
              ],
            ),
            SizedBox(height: 15.h,),
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 45.h),
                    backgroundColor: Color(0xFFFFBB0D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(24),
                    )
                ),
                child: Text("Claim Reward",style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),)),
          ],
        ),
      ),
    );
  }
}
