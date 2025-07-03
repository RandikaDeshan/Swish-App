import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 28.h,),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/profileScreenUi');
          },
          child: Container(
            height: 77.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(0, 0, 0, 0.29),
            ),
            child: Row(
              children: [
                SizedBox(width: 21.w,),
                Icon(Icons.person,size: 23,color: Colors.white,),
                SizedBox(width: 13.w,),
                Text("My Profile",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),
              ],
            ),
          ),
        ),
        SizedBox(height: 11.h,),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/moodTrackerPage');
          },
          child: Container(
            height: 77.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(0, 0, 0, 0.29),
            ),
            child: Row(
              children: [
                SizedBox(width: 21.w,),
                Icon(Icons.tag_faces_outlined,size: 23,color: Colors.white,),
                SizedBox(width: 13.w,),
                Text("Mood Tracker",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),),
              ],
            ),
          ),
        ),
        SizedBox(height: 11.h,),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/tournament');
          },
          child: Container(
            height: 77.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(0, 0, 0, 0.29),
            ),
            child: Row(
              children: [
                SizedBox(width: 21.w,),
                Icon(Icons.wine_bar,size: 23,color: Colors.white,),
                SizedBox(width: 13.w,),
                Text("Tournaments",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),),
              ],
            ),
          ),
        ),
        SizedBox(height: 11.h,),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/leaderboard');
          },
          child: Container(
            height: 77.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(0, 0, 0, 0.29),
            ),
            child: Row(
              children: [
                SizedBox(width: 21.w,),
                Icon(Icons.leaderboard,size: 23,color: Colors.white,),
                SizedBox(width: 13.w,),
                Text("Leaderboards",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),),
              ],
            ),
          ),
        ),
        SizedBox(height: 11.h,),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/settingsScreen');
          },
          child: Container(
            height: 77.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(0, 0, 0, 0.29),
            ),
            child: Row(
              children: [
                SizedBox(width: 21.w,),
                Icon(Icons.settings,size: 23,color: Colors.white,),
                SizedBox(width: 13.w,),
                Text("Setting",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),),
              ],
            ),
          ),
        ),
        SizedBox(height: 11.h,),
        Container(
          height: 77.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(0, 0, 0, 0.29),
          ),
          child: Row(
            children: [
              SizedBox(width: 21.w,),
              Icon(Icons.logout,size: 23,color: Colors.white,),
              SizedBox(width: 13.w,),
              Text("Logout",style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              ),),
            ],
          ),
        ),
      ],
    );
  }
}
