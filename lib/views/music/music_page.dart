import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiss_app/views/calibration/widgets/select_music_card.dart';
import 'package:swiss_app/views/home_page/widgets/player_card.dart';

import '../../models/song_model.dart';
import '../widgets/music_image.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  SongModel? selectedSong;
  final List<SongModel> songs = [
    SongModel(name: "Life of Hope", image: "assets/calibration/song1.png", author: "Leo Mano", ispro: false,isselected: false),
    SongModel(name: "Walking on Sunshine", image: "assets/calibration/song2.png", author: "Katrina", ispro: false,isselected: false),
    SongModel(name: "Good Day", image: "assets/calibration/song3.png", author: "Nappy", ispro: false,isselected: false),
    SongModel(name: "Don’t Stop Me Now", image: "assets/calibration/song4.png", author: "Queen", ispro: true,isselected: false),
  ];
  final List<String> categories = [
    'For You' , 'New' , 'Free' , 'Premium'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
          child: Stack(
            children: [
              MusicImage(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 38.h,),
                  Text(
                    "Music",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 22.h,),
                  //music player
                  if(selectedSong != null)InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/playPage');
                      },
                      child: PlayerCard(song: selectedSong!,)),

                  SizedBox(height: 22.h,),
                  SizedBox(
                    height: 40.h,
                    child: ListView.builder(itemCount: categories.length,scrollDirection: Axis.horizontal,itemBuilder:(context, index) {
                      final category = categories[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.r)),
                              border: Border.all(
                                color: Color(0xffFF15E5),
                                width: 1.w,
                              )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
                            child: Text(
                              category,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                        ),
                      );
                    },),
                  ),

                  SizedBox(height: 20.h,),

                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40.h,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(255, 255, 255, 0.07),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(151, 55, 255, 1),
                              width: 1
                            )
                          ),
                          prefixIcon: Icon(Icons.search,size: 20,color: Colors.white,),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          )
                        ),
                      )),
                  SizedBox(height: 20.h,),

                  //other songs
                  Expanded(
                    child: ListView.builder(itemCount: songs.length,itemBuilder: (context, index) {
                      final song = songs[index];
                      return InkWell(
                          onTap: () {
                            if(song.isselected!){
                              setState(() {
                                song.isselected = false;
                              });
                            }else{
                              setState(() {
                                song.isselected = true;
                              });
                            }
                            setState(() {
                              selectedSong = song;
                            });
                          },
                          child: Padding(
                            padding:  EdgeInsets.symmetric(vertical: 4.h),
                            child: SelectMusicCard(image: song.image, name: song.name, author: song.author, selected: song.isselected!,ispro: song.ispro,),
                          ));
                    },),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
