import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiss_app/views/calibration/widgets/select_music_card.dart';

import '../../models/song_model.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  double sliderValue = 0.0;
  final List<SongModel> songs = [
    SongModel(name: "Life of Hope", image: "assets/calibration/song1.png", author: "Leo Mano", ispro: false,isselected: false),
    SongModel(name: "Walking on Sunshine", image: "assets/calibration/song2.png", author: "Katrina", ispro: false,isselected: false),
    SongModel(name: "Good Day", image: "assets/calibration/song3.png", author: "Nappy", ispro: false,isselected: false),
    SongModel(name: "Don’t Stop Me Now", image: "assets/calibration/song4.png", author: "Queen", ispro: true,isselected: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                SizedBox(height: 24.h,),
                Text("Life of Hope",style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFE6E7F2),
                ),),
                Text("Leo Mano",style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFD3AAFF),
                ),),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 0.4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Relaxing",style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),),
                  ),
                ),
                SizedBox(height: 21.h,),
                Container(
                  width: 259.w,
                  height: 249.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.18),
                        blurRadius: 6.1,
                        spreadRadius: 3,
                        offset: Offset(0, 4),
                      )
                    ],
                    image: DecorationImage(image: AssetImage("assets/calibration/song1.png"),fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 27.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,size: 23,color: Color.fromRGBO(217, 217, 217, 1),)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.pause_circle,size: 62,color: Color.fromRGBO(217, 217, 217, 1),)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,size: 23,color: Color.fromRGBO(217, 217, 217, 1),)),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 3.h,
                    thumbColor: Color(0xFF8E97FD),
                    activeTrackColor: Color(0xFFE6E7F2)
                  ),
                  child: Slider(value: sliderValue, onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                    padding: EdgeInsets.all(0),
                  inactiveColor: Color(0xFF47557E),
                  ),
                ),
                SizedBox(height: 12.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("01:30",style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFE6E7F2),
                    ),),
                    Text("45:00",style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFE6E7F2),
                    ),),
                  ],
                ),
                SizedBox(height: 27.h,),
                Row(
                  children: [
                    Text("10 Songs",style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFE6E7F2),
                    ),),
                  ],
                ),
                SizedBox(height: 27.h,),
                Expanded(
                  child: ListView.builder(itemCount: songs.length,itemBuilder:(context, index) {
                    final song = songs[index];
                    return Padding(
                      padding:  EdgeInsets.symmetric(vertical: 4.h),
                      child: SelectMusicCard(image: song.image, name: song.name, author: song.author, selected: false,ispro: false,),
                    );
                  },),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
