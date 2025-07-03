import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_painter_v2/flutter_painter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:swiss_app/views/home_page/widgets/player_card.dart';
import 'package:swiss_app/views/mandala_screens/widgets/earn_screen.dart';
import 'package:swiss_app/views/mandala_screens/widgets/win_screen.dart';

import '../../models/song_model.dart';

class ColoringScreen extends StatefulWidget {
  const ColoringScreen({super.key});

  @override
  State<ColoringScreen> createState() => _ColoringScreenState();
}

class _ColoringScreenState extends State<ColoringScreen> {

  PainterController controller = PainterController();
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  List<Color> colors = [
      Color(0xFFEF4444),
      Color(0xFFF97316),
      Color(0xFFFACC15),
      Color(0xFF4ADE80),
      Color(0xFF2DD4BF),
      Color(0xFF3B82F6),
      Color(0xFF6366F1),
      Color(0xFFEC4899),
      Color(0xFFF43F5E),
      Color(0xFFD946EF),
      Color(0xFF8B5CF6),
      Color(0xFF0EA5E9),
      Color(0xFF10B981),
      Color(0xFF84CC16),
     ];

  bool _isColorPickerVisible = false;

  final PhotoViewController zoomController = PhotoViewController();

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }
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
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30.w),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 32.h),
                  child: no == 0 ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          style: IconButton.styleFrom(
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Color.fromRGBO(204, 204, 204, 1)
                              )
                            )
                          ),
                          icon: Icon(Icons.arrow_back)),
                      Row(
                        children: [
                          IconButton(
                              onPressed: (){
                              },
                              style: IconButton.styleFrom(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: Color.fromRGBO(204, 204, 204, 1)
                                      )
                                  )
                              ),
                              icon: SvgPicture.asset("assets/coloring_screen/Vector.svg")),
                          IconButton(
                              onPressed: (){
                              },
                              style: IconButton.styleFrom(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: Color.fromRGBO(204, 204, 204, 1)
                                      )
                                  )
                              ),
                              icon: SvgPicture.asset("assets/coloring_screen/Vector1.svg")),
                          IconButton(
                              onPressed: (){
                                setState(() {
                                  no = 1;
                                });
                              },
                              style: IconButton.styleFrom(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: Color.fromRGBO(204, 204, 204, 1)
                                      )
                                  )
                              ),
                              icon: SvgPicture.asset("assets/coloring_screen/Vector2.svg")),
                          IconButton(
                              onPressed: (){
                                setState(() {
                                  zoomController.scale = (zoomController.scale ?? 1.0) * 1.5;
                                });
                              },
                              style: IconButton.styleFrom(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: Color.fromRGBO(204, 204, 204, 1)
                                      )
                                  )
                              ),
                              icon: SvgPicture.asset("assets/coloring_screen/Vector3.svg")),
                        ],
                      )
                    ],
                  ) : Column(
                    children: [
                      Container(
                          height: 95.h,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xFF9654FE),
                          child: PlayerCard(song: SongModel(name: "Life of Hope", image: "assets/calibration/song1.png", author: "Leo Mano", ispro: false))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap:(){
                              setState(() {
                                no = 0;
                              });
                            },
                            child: Container(
                              width: 36.w,
                              height: 21.h,
                              decoration: BoxDecoration(
                                color: Color(0xFF9654FE),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                )
                              ),
                              child: Center(child: Icon(Icons.keyboard_arrow_up_outlined,color: Colors.white,)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 109.h,),
                SizedBox(
                    width: 319.w,
                    height: 346.h,
                    child: ClipRect(
                      child: PhotoView(imageProvider: AssetImage("assets/art_screen/art.png"),
                        customSize: Size(319, 346),
                        controller: zoomController,
                        backgroundDecoration: BoxDecoration(
                        color: Colors.white
                      ),),
                    )),
                SizedBox(height: 58.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if(_isColorPickerVisible == true)Padding(
                      padding:  EdgeInsets.only(right: 10.w),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: 256.w,
                        height: 135.h,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Choose colors:",style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                                ),),
                                IconButton(onPressed: (){
                                  showDialog(context: context, builder: (context) {
                                    return AlertDialog(
                                      title: Text("Pick a color",style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black
                                      ),),
                                      content: SingleChildScrollView(child: ColorPicker(pickerColor: pickerColor, onColorChanged: changeColor)),
                                    );
                                  },);
                                },padding: EdgeInsets.all(0), icon: Icon(Icons.format_color_fill_sharp,)),
                              ],
                            ),
                            Expanded(
                              child: GridView.builder(itemCount: colors.length ,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7,crossAxisSpacing: 10.5,mainAxisSpacing: 8),padding: EdgeInsets.all(0),itemBuilder: (context, index) {
                                final color = colors[index];
                                return Container(
                                  width: 24.w,
                                  height: 24.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: color,
                                  ),
                                );
                              },),
                            )
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: (){
                          setState(() {
                            _isColorPickerVisible = !_isColorPickerVisible;
                          });
                        },
                        style: IconButton.styleFrom(
                          backgroundColor: _isColorPickerVisible == true ? Color(0xFF6366F1):Colors.white,
                            shape: CircleBorder(
                                side: BorderSide(
                                    color: Color.fromRGBO(204, 204, 204, 1)
                                )
                            )
                        ),
                        icon: SvgPicture.asset("assets/coloring_screen/Group 63.svg",color: _isColorPickerVisible == true ? Colors.white: Color(0xFF6808D0),)),
                  ],
                ),
                SizedBox(height: 82.h,),
                Padding(
                  padding:  EdgeInsets.only(bottom: 32.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: (){
                              },
                              style: IconButton.styleFrom(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: Color.fromRGBO(204, 204, 204, 1)
                                      )
                                  )
                              ),
                              icon: SvgPicture.asset("assets/coloring_screen/Vector4.svg")),
                          IconButton(
                              onPressed: (){
                              },
                              style: IconButton.styleFrom(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color: Color.fromRGBO(204, 204, 204, 1)
                                      )
                                  )
                              ),
                              icon: SvgPicture.asset("assets/coloring_screen/Vector5.svg")),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: (){
                                showDialog(context: context, builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: WinScreen(),
                                  );
                                },);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFF9654FE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(24),
                                )
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 22.5.w,vertical: 7.5.h),
                                child: Text("Draft",style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight: FontWeight.w700,
                                                      color: Colors.white
                                                    ),),
                              )),
                          SizedBox(width: 10.w,),
                          TextButton(
                              onPressed:() {
                                showDialog(context: context, builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: EarnScreen(),
                                  );
                                },);
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFFAAAAAA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(24),
                                  )
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 22.5.w,vertical: 7.5.h),
                                child: Text("Done",style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white
                                ),),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 55.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
