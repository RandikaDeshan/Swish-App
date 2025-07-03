import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiss_app/views/challenge_tracker/widgets/challenge_card.dart';
import 'package:swiss_app/views/widgets/music_image.dart';

class ChallengeTracherPage extends StatelessWidget {
  const ChallengeTracherPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "All" , "Active" , "Completed" , "Upcoming"
    ];
    List<Map<String,dynamic>> challenges = [
      {
        'name' : 'Color 5 patterns this week',
        'sub' : '3/5 completed',
        'activity' : 'Active'
      },
      {
        'name' : 'Complete a mandala',
        'sub' : '1 day remaining',
        'activity' : 'Upcoming'
      },
      {
        'name' : 'Finish a landscape',
        'sub' : 'Completed',
        'activity' : 'Completed'
      },
      {
        'name' : 'Try a new color palette',
        'sub' : '2 days remaining',
        'activity' : 'Upcoming'
      },
      {
        'name' : 'Daily doodle challenge',
        'sub' : '4/7 completed',
        'activity' : 'Active'
      },
    ];
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
            children: [
              MusicImage(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon:Icon(Icons.arrow_back,color: Colors.white,)),
                        Text("Challenge Tracker",style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          SizedBox(height: 24.h,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 51.h,
                            child: ListView.builder(itemCount: categories.length,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                              final category = categories[index];
                              return Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          color: Color(0xFFFF15E5),
                                          width: 1
                                      )
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
                                    child: Text(category,style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white
                                    ),),
                                  ),
                                ),
                              );
                            },),
                          ),
                          SizedBox(height: 48.h,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 44.h,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.03)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 14.w,top: 14.h),
                              child: Text("Your Challenges",style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 405.h,
                            child: ListView.builder(itemCount: challenges.length,itemBuilder: (context, index) {
                              final challenge = challenges[index];
                              return Padding(
                                padding:  EdgeInsets.only(bottom: 5.h),
                                child: ChallengeCard(name: challenge['name'], sub: challenge['sub'], activity: challenge['activity']),
                              );
                            },),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
