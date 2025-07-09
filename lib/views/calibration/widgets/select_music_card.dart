import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectMusicCard extends StatefulWidget {
  final String image;
  final String name;
  final String author;
  final bool? ispro;
  final bool selected;
  const SelectMusicCard({super.key, required this.image, required this.name, required this.author, this.ispro, required this.selected,});

  @override
  State<SelectMusicCard> createState() => _SelectMusicCardState();
}

class _SelectMusicCardState extends State<SelectMusicCard> {
  bool isplay = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: !widget.ispro! ? widget.selected ? Colors.white : Color(0xFF9737FF) :Color(0xFF9737FF),
              width: 1
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 6.w,),
              Container(
                height:81.h,
                width: 81.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.cover)
                ),
              ),
              SizedBox(width: 11.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.name,style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),),
                  Text(widget.author,style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFD3AAFF),
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
                ],
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(right: 25.w),
            child: IconButton(onPressed: (){
            }, icon: Icon(Icons.play_circle ,color: Colors.white,size: 40)),
          )
        ],
      ),
    ).blurred(
      blur: widget.ispro! ? 1:0,
      borderRadius: BorderRadius.circular(10),
      colorOpacity: 0.2,
      blurColor: widget.ispro! ? Colors.white : Colors.transparent,
      alignment: Alignment.topRight,
      overlay: widget.ispro! ? Padding(
        padding:  EdgeInsets.only(top: 4.h,right: 5.w),
        child: Container(
          width: 39.w,
          height: 17.h,
          decoration: BoxDecoration(
            color: Color(0xFFFECE00),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
      ): null
    );
  }
}
