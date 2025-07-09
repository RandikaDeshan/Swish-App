import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swiss_app/models/song_model.dart';
import 'package:swiss_app/views/calibration/widgets/select_music_card.dart';

class CalibrationNewThree extends StatefulWidget {
  const CalibrationNewThree({super.key});

  @override
  State<CalibrationNewThree> createState() => _CalibrationNewThreeState();
}

class _CalibrationNewThreeState extends State<CalibrationNewThree> {

  int selectedNo = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedNo = 0;
  }

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
        child: SafeArea(
          child: Stack(
              fit: StackFit.expand,
              children:[
                Positioned(
                    top: 100,
                    left: 0,
                    right: 0,
                    child: SvgPicture.asset("assets/calibration/Union.svg", width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height, fit:BoxFit.cover,)),
                SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 25.w,top: 45.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Select your ",style: TextStyle(
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),),
                              Text("music",style: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF9737FF),
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              SizedBox(height: 20.h,),
                              SizedBox(
                                height: 450.h,
                                child: ListView.builder(itemCount: songs.length,itemBuilder: (context, index) {
                                  final song = songs[index];
                                  return InkWell(
                                      onTap: () {
                                        if(selectedNo == index){
                                          setState(() {
                                            selectedNo = 0;
                                          });
                                        }else{
                                          setState(() {
                                            selectedNo = index;
                                          });
                                        }
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 9.h),
                                        child: SelectMusicCard(image: song.image, name: song.name, author:song.author,ispro: song.ispro, selected: selectedNo == index? true : false,),
                                      ));
                                },),
                              ),
                              SizedBox(height: 40.h,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/calibrationThree');
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
                              SizedBox(height: 80.h,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),]
          ),
        ),
      ),
    );
  }
}
