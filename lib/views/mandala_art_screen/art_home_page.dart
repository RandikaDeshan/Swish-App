import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/music_image.dart';

class ArtHomePage extends StatefulWidget {
  const ArtHomePage({super.key});

  @override
  State<ArtHomePage> createState() => _ArtHomePageState();
}

class _ArtHomePageState extends State<ArtHomePage> {
  final PageController controller = PageController();
  List<Map<String,dynamic>> mandalas = [
    {
      'image' : 'assets/art_screen/art.png',
      'name' : 'Mandala',
      'isPro' : false
    },
    {
      'image' : 'assets/art_screen/art.png',
      'name' : 'Mandala',
      'isPro' : false
    },
    {
      'image' : 'assets/art_screen/art.png',
      'name' : 'Mandala',
      'isPro' : false
    },
    {
      'image' : 'assets/art_screen/art.png',
      'name' : 'Mandala',
      'isPro' : false
    },
    {
      'image' : 'assets/art_screen/art.png',
      'name' : 'Mandala',
      'isPro' : false
    },
    {
      'image' : 'assets/art_screen/art.png',
      'name' : 'Mandala',
      'isPro' : false
    },
    {
      'image' : 'assets/art_screen/art.png',
      'name' : 'Mandala',
      'isPro' : false
    },
    {
      'image' : 'assets/art_screen/art.png',
      'name' : 'Mandala',
      'isPro' : true
    },
    {
      'image' : 'assets/art_screen/art.png',
      'name' : 'Mandala',
      'isPro' : true
    },

  ];
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //text
                      Row(
                        children: [
                          Text(
                            "Pattern",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                  
                      SizedBox(height: 10.h,),
                  
                      //category row
                      SizedBox(
                        height: 51.h,
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                                    border: Border.all(
                                      color: Color(0xffFF15E5),
                                      width: 1.w,
                                    )
                                ),
                                child: Text(
                                  'For You',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                                    border: Border.all(
                                      color: Color(0xffFF15E5),
                                      width: 1.w,
                                    )
                                ),
                                child: Text(
                                  'New',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                                    border: Border.all(
                                      color: Color(0xffFF15E5),
                                      width: 1.w,
                                    )
                                ),
                                child: Text(
                                  'Free',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                                    border: Border.all(
                                      color: Color(0xffFF15E5),
                                      width: 1.w,
                                    )
                                ),
                                child: Text(
                                  'Premium',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10.w),
                                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                                    border: Border.all(
                                      color: Color(0xffFF15E5),
                                      width: 1.w,
                                    )
                                ),
                                child: Text(
                                  'Top',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  
                      //week challaneg art
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x609737FF),
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                              color: Color(0xff9737FF),
                              width: 1.w,
                            )
                          ),
                          margin: EdgeInsets.only(top: 20.h),
                          child: Row(
                            children: [
                              Image.asset('assets/art_screen/art.png'),
                              SizedBox(width: 20.w,),
                              Column(
                                children: [
                                  Text(
                                    "Try This Week's \nChallenge 1!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 2.h,),
                                  Text(
                                    "Express your creativity",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                      ),
                  
                      SizedBox(height: 20.h,),
                  
                      //search bar
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff9737FF),
                            width: 1.w,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.white, size: 25.sp,),
                            SizedBox(width: 10.w,),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                  
                      SizedBox(height: 20.h,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 455.h,
                        child: PageView(
                          controller: controller,
                          children: [
                            GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 0.8),physics: NeverScrollableScrollPhysics(),itemCount: mandalas.length,padding: EdgeInsets.only(left: 10.w), itemBuilder: (context, index) {
                              final mandala = mandalas[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/coloringScreen');
                                },
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(mandala['image'],width: 92.w,height:100.h,fit: BoxFit.cover,),
                                        SizedBox(height: 8.h,),
                                        Text(mandala['name'],style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                        ),),
                                      ],
                                    ),
                                    if(mandala['isPro'] == true)Positioned(
                                      right:25,
                                      top:5,
                                      child: Container(
                                        width:39.w,
                                        height:17.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: Color(0xFFFECE00),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,color: Colors.white,size: 7,),
                                            Text("pro",style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white
                                            ),),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },),
                            GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 0.8),physics: NeverScrollableScrollPhysics(),itemCount: mandalas.length,padding: EdgeInsets.only(left: 10.w), itemBuilder: (context, index) {
                              final mandala = mandalas[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/coloringScreen');
                                },
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(mandala['image'],width: 92.w,height:100.h,fit: BoxFit.cover,),
                                        SizedBox(height: 8.h,),
                                        Text(mandala['name'],style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                        ),),
                                      ],
                                    ),
                                    if(mandala['isPro'] == true)Positioned(
                                      right:25,
                                      top:5,
                                      child: Container(
                                        width:39.w,
                                        height:17.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: Color(0xFFFECE00),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,color: Colors.white,size: 7,),
                                            Text("pro",style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white
                                            ),),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },),
                            GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 0.8),physics: NeverScrollableScrollPhysics(),itemCount: mandalas.length,padding: EdgeInsets.only(left: 10.w), itemBuilder: (context, index) {
                              final mandala = mandalas[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/coloringScreen');
                                },
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(mandala['image'],width: 92.w,height:100.h,fit: BoxFit.cover,),
                                        SizedBox(height: 8.h,),
                                        Text(mandala['name'],style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white
                                        ),),
                                      ],
                                    ),
                                    if(mandala['isPro'] == true)Positioned(
                                      right:25,
                                      top:5,
                                      child: Container(
                                        width:39.w,
                                        height:17.h,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: Color(0xFFFECE00),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.star,color: Colors.white,size: 7,),
                                            Text("pro",style: TextStyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white
                                            ),),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },),
                          ],
                        ),
                      ),
                      SizedBox(height: 18.h,),
                      SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                        effect: WormEffect(
                          dotWidth: 10.w,
                          dotHeight: 10.h,
                          activeDotColor: Color(0xFF9737FF),
                          dotColor: Color(0xFFD9D9D9),
                        ),
                      ),
                  
                  
                      //arts
                      // Expanded(
                      //   child: SingleChildScrollView(
                      //     child: Column(
                      //       children: [
                      //         Row(
                      //           children: [
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                           color: Colors.white,
                      //                           fontWeight: FontWeight.bold,
                      //                           fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //         Row(
                      //           children: [
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //         Row(
                      //           children: [
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //         Row(
                      //           children: [
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             ),
                      //             Expanded(
                      //               child: Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                      //                 child: Column(
                      //                   children: [
                      //                     Image.asset('assets/art_screen/art.png'),
                      //                     Text(
                      //                       'Mandala',
                      //                       style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontWeight: FontWeight.bold,
                      //                         fontSize: 14.sp,
                      //                       ),
                      //                     )
                      //                   ],
                      //                 ),
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
