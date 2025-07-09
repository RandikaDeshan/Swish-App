import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swiss_app/models/song_model.dart';
import 'package:swiss_app/views/badge_page/badge_screen.dart';
import 'package:swiss_app/views/calibration/widgets/select_music_card.dart';
import 'package:swiss_app/views/home_page/widgets/achievement_card.dart';
import 'package:swiss_app/views/home_page/widgets/menu_page.dart';
import 'package:swiss_app/views/home_page/widgets/mood_card.dart';
import 'package:swiss_app/views/home_page/widgets/painting_card.dart';
import 'package:swiss_app/views/home_page/widgets/player_card.dart';

import '../widgets/music_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<SongModel> songs = [
    SongModel(name: "Life of Hope", image: "assets/calibration/song1.png", author: "Leo Mano", ispro: false,isselected: false),
    SongModel(name: "Walking on Sunshine", image: "assets/calibration/song2.png", author: "Katrina", ispro: false,isselected: false),
    SongModel(name: "Good Day", image: "assets/calibration/song3.png", author: "Nappy", ispro: false,isselected: false),
    SongModel(name: "Don’t Stop Me Now", image: "assets/calibration/song4.png", author: "Queen", ispro: true,isselected: false),
  ];
  final PageController controller = PageController();
  int no = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    no = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 114.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      gradient: LinearGradient(colors: [
                        Color(0xFF9737FF),
                        Color(0xFF7A3EED),
                      ],
                      begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF152A26).withOpacity(0.15),
                          offset: Offset(0, 1),
                          blurRadius: 12.3,
                          spreadRadius: 12.3
                        )
                      ],
                      border: Border(bottom: BorderSide(
                        color: Color(0xFF9737FF),
                        width: 1
                      ))
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 34.w,right: 37.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 11.w,
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage("assets/home_page/steve.png"),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Hello, Steve",style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white
                                  ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    spacing: 3.w,
                                    children: [
                                      SvgPicture.asset("assets/icons/Vector.svg"),
                                      Text("Beginner",style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                      ),),
                                      SvgPicture.asset("assets/icons/Vector1.svg"),
                                      Text("Lv. 3",style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                      ),),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          IconButton(onPressed: (){
                            if(no == 1){
                              setState(() {
                                no = 0;
                              });
                            }else{
                              setState(() {
                                no = 1;
                              });
                            }
                          }, icon: no == 0 ? Icon(Icons.menu,color: Colors.white, size: 30,):SvgPicture.asset("assets/home_page/Group.svg",width: 20.w,height: 20.h,)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w),
                      child: SingleChildScrollView(
                        child: no == 0 ?Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 23.h,),
                            Text.rich(
                              TextSpan(
                                text: "How are you ",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white
                                ),
                                children: [
                                  TextSpan(
                                    text: "feeling ",
                                    style: TextStyle(
                                        color: Color(0xFF9737FF),
                                    )
                                  ),
                                  TextSpan(
                                    text: "today?"
                                  )
                                ]
                              )
                            ),
                            SizedBox(height: 21.h,),
                            MoodCard(),
                            SizedBox(height: 13.h,),
                            InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/playPage');
                                },
                                child: PlayerCard(song: SongModel(name: "Life of Hope", image: "assets/calibration/song1.png", author: "Leo Mano", ispro: false),)),
                            SizedBox(height: 32.h,),
                            Text.rich(
                                TextSpan(
                                    text: "Back to ",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white
                                    ),
                                    children: [
                                      TextSpan(
                                          text: "painting  ",
                                          style: TextStyle(
                                            color: Color(0xFF9737FF),
                                          )
                                      ),
                                    ]
                                )
                            ),
                            SizedBox(height: 25.h,),
                            PaintingCard(),
                            SizedBox(height: 32.h,),
                            Text.rich(
                                TextSpan(
                                    text: "Latest ",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white
                                    ),
                                    children: [
                                      TextSpan(
                                          text: "Achievements  ",
                                          style: TextStyle(
                                            color: Color(0xFF9737FF),
                                          )
                                      ),
                                    ]
                                )
                            ),
                            SizedBox(height: 23.h,),
                            AchievementCard(),
                            BadgeCard(badge: {
                              'title': 'Color 5 patterns this week',
                              'subtitle': '3/5 completed',
                              'isCompleted': true,
                              'status': 'Active',
                              'isLocked': false,
                            }),
                            SizedBox(height: 67.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text.rich(
                                    TextSpan(
                                        text: "Start a ",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                        ),
                                        children: [
                                          TextSpan(
                                              text: "new  ",
                                              style: TextStyle(
                                                color: Color(0xFF9737FF),
                                              ),
                                          ),
                                          TextSpan(
                                            text: "pattern to paint"
                                          )
                                        ]
                                    )
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/artHomePage');
                                  },
                                  child: Text("See all",style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF9737FF),
                                  ),),
                                )
                              ],
                            ),
                            SizedBox(height: 28.h,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 130.h,
                              child: PageView(
                                controller: controller,
                                scrollDirection: Axis.horizontal,
                                physics: PageScrollPhysics(),
                                children: [
                                  SizedBox(
                                    width: 340.w,
                                    height: 150.h,
                                    child: ListView.builder(itemCount: 3,physics: const NeverScrollableScrollPhysics(),scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                                      return Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 12.w),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/coloringScreen');
                                          },
                                          child: Column(
                                            children: [
                                              Image.asset("assets/art_screen/art.png",width: 92.w,height: 100.h,fit: BoxFit.cover,),
                                              SizedBox(height: 8.h,),
                                              Text("Mandala ",style: TextStyle(
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white
                                              ),),
                                            ],
                                          ),
                                        ),
                                      );
                                    },),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 150.h,
                                    child: ListView.builder(itemCount: 3,physics: const NeverScrollableScrollPhysics(),scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                                      return Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 12.w),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/coloringScreen');
                                          },
                                          child: Column(
                                            children: [
                                              Image.asset("assets/art_screen/art.png",width: 92.w,height: 100.h,fit: BoxFit.cover,),
                                              SizedBox(height: 8.h,),
                                              Text("Mandala ",style: TextStyle(
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white
                                              ),),
                                            ],
                                          ),
                                        ),
                                      );
                                    },),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 150.h,
                                    child: ListView.builder(itemCount: 3,physics: const NeverScrollableScrollPhysics(),scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                                      return Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 12.w),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(context, '/coloringScreen');
                                          },
                                          child: Column(
                                            children: [
                                              Image.asset("assets/art_screen/art.png",width: 92.w,height: 100.h,fit: BoxFit.cover,),
                                              SizedBox(height: 8.h,),
                                              Text("Mandala ",style: TextStyle(
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white
                                              ),),
                                            ],
                                          ),
                                        ),
                                      );
                                    },),
                                  )
                                ],
                              )
                            ),
                            SizedBox(height: 20.h,),
                            Center(
                              child: SmoothPageIndicator(
                                  controller: controller,
                                  count: 3,
                                effect: WormEffect(
                                  dotWidth: 10.w,
                                  dotHeight: 10.h,
                                  activeDotColor: Color(0xFF9737FF),
                                  dotColor: Color(0xFFD9D9D9),
                                ),
                              ),
                            ),
                            SizedBox(height: 44.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text.rich(
                                    TextSpan(
                                        text: "Music ",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Recommendation",
                                            style: TextStyle(
                                              color: Color(0xFF9737FF),
                                            ),
                                          ),
                                        ]
                                    )
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/music');
                                  },
                                  child: Text("See all",style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF9737FF),
                                  ),),
                                )
                              ],
                            ),
                            SizedBox(height: 25.h,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 359.h,
                              child: ListView.builder(itemCount: 3,physics: NeverScrollableScrollPhysics(),itemBuilder: (context, index) {
                                final song = songs[index+1];
                                return Padding(
                                  padding:  EdgeInsets.symmetric(vertical: 4.h),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/playPage');
                                      },
                                      child: SelectMusicCard(image: song.image, name: song.name, author: song.author, selected: song.isselected!,ispro: song.ispro,)),
                                );
                              },),
                            ),
                            SizedBox(height: 45.h,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 4.h,
                              color: Color(0xFFC289FF),
                            ),
                            SizedBox(height: 38.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: "Subscription ",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Plans",
                                        style: TextStyle(
                                          color: Color(0xFF9737FF),
                                        )
                                      )
                                    ]
                                  )
                                ),
                              ],
                            ),
                            SizedBox(height: 38.h,),
                            TextButton(onPressed: (){
                              Navigator.pushNamed(context, '/calibrationFour');
                            },
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFF9654FE),
                                  fixedSize: Size(MediaQuery.of(context).size.width, 45.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(24),
                                  )
                                ),
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width:19.w,
                                    height: 19.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFFFECE00),
                                    ),
                                    child: Icon(Icons.star,color: Colors.white,size: 7,)),
                                SizedBox(width: 7.w,),
                                Text("Upgrade to Premium",style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white
                                ),)
                              ],
                            )),
                            SizedBox(height: 38.h,),
                          ],
                        ):MenuPage(),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
