import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiss_app/models/song_model.dart';

class PlayerCard extends StatefulWidget {
  final SongModel song;
  const PlayerCard({super.key, required this.song});

  @override
  State<PlayerCard> createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> {
  double _slidervalue = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF9737FF),
          width: 1
        ),
        color: Color(0xFF9737FF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.16),
            spreadRadius: 0,
            blurRadius: 7.1,
            offset: Offset(0, 3)
          )
        ]
      ),
      child: Padding(
        padding:  EdgeInsets.only(right: 23.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(widget.song.image,width: 81.w,height: 81.h,),
            Padding(
              padding:  EdgeInsets.only(left: 4.w),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 30.w,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width:100.w,
                              child: Text(widget.song.name,style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            ),
                            Text(widget.song.author,style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFD3AAFF)
                            ),),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color.fromRGBO(217, 217, 217, 0.4)
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                child: Text("Relaxing",style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),),
                              ),
                            ),
                            SizedBox(height: 6.h)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.skip_previous,color: Colors.white,size: 20,),
                            Icon(Icons.pause_circle,color: Colors.white,size: 40,),
                            Icon(Icons.skip_next,color: Colors.white,size: 20,),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 180.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                            child: SliderTheme(
                              data: SliderThemeData(
                                trackHeight: 3,
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 5
                                )
                              ),
                              child: Slider(
                                value: _slidervalue,
                                activeColor: Colors.white,
                                padding: EdgeInsets.all(0),
                                thumbColor: Colors.white,
                                inactiveColor: Color(0xFFA8A8A8),
                                onChanged: (value) {
                                setState(() {
                                  _slidervalue = value;
                                });
                              },
                              min: 0,
                                max: 100,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("01:30",style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                              ),),
                              Text("4:00",style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
