import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengeCard extends StatefulWidget {
  final String name;
  final String sub;
  final String activity;
  const ChallengeCard({super.key, required this.name, required this.sub, required this.activity});

  @override
  State<ChallengeCard> createState() => _ChallengeCardState();
}

class _ChallengeCardState extends State<ChallengeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 77.h,
      decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.03)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              widget.activity != 'Completed' ? Icon(Icons.add,color: Colors.white,size: 14,):SizedBox(height: 16.h,),
              SizedBox(width: 17.77.w,)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                    color: widget.activity == 'Completed' ? Color(0xFF00152A) : Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          color: Color.fromRGBO(161, 164, 178, 1),
                          width: 2
                      )
                  ),
                  child:widget.activity == 'Completed' ? Icon(Icons.check,size: 14,color: Color.fromRGBO(108, 178, 142, 1),): null,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: widget.activity == 'Completed' ? Color.fromRGBO(255, 255, 255, 0.5) : Colors.white,
                  ),),
                  Text(widget.sub,style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: widget.activity == 'Completed' ? Color(0xFF6CB28E) : Color.fromRGBO(255, 255, 255, 0.5)
                  ),),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
