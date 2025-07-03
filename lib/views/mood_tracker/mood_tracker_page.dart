import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pie_chart/pie_chart.dart';

class MoodTrackerPage extends StatelessWidget {
  const MoodTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Relaxed": 50,
      "Focused": 25,
      "Energetic": 15,
      "Lazy": 10,
    };
    Map<String,String> names = {
      "Relaxed" : "Relaxed",
      "Focused": "Focused",
      "Energetic":"Energetic",
      "Lazy":"Lazy",
    };
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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                    Text("Mood Tracker",style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),),
                  ],
                ),
                SizedBox(height: 28.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Weekly ",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                              children: [
                                TextSpan(
                                  text: "Report",
                                  style: TextStyle(
                                    color: Color(0xFF9737FF),
                                  )
                                )
                              ]
                            )
                          ),
                        ],
                      ),
                      SizedBox(height: 29.h,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 350.h,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 0.54),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 21.h,horizontal: 20.w),
                          child: PieChart(
                              dataMap: dataMap,
                            chartType: ChartType.ring,
                            legendOptions: LegendOptions(
                              showLegends: true,
                              legendPosition: LegendPosition.top,
                              showLegendsInRow: true,
                              legendLabels: names,
                              legendTextStyle: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              )
                            ),
                            centerText: '45%',
                            centerTextStyle: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.white
                            ),
                            colorList: [
                              Color(0xFFD4ACFF),
                              Color(0xFF8781FF),
                              Color(0xFFF6B300),
                              Color(0xFF949494),
                            ],
                            chartValuesOptions: ChartValuesOptions(
                              showChartValues: false,
                              showChartValueBackground: false
                            ),
                            chartRadius: 229.w
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 77.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.54),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 11.w,
                                children: [
                                  SvgPicture.asset("assets/mood_tracker/🦆 emoji _slightly smiling face_.svg"),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("50%",style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      ),),
                                      Text("Relaxed",style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(255, 255, 255, 0.65)
                                      ),),
                                    ],
                                  ),
                                  PieChart(
                                      dataMap: {"Relaxed" : 50},
                                      totalValue: 100,
                                      chartType: ChartType.ring,
                                      ringStrokeWidth: 5,
                                      baseChartColor: Color.fromRGBO(115, 136, 169, 0.35),
                                      emptyColor: Color.fromRGBO(115, 136, 169, 0.35),
                                      legendOptions: LegendOptions(
                                          showLegends: false,
                                      ),
                                      chartValuesOptions: ChartValuesOptions(
                                        showChartValues: false,
                                      ),
                                      colorList: [
                                        Color.fromRGBO(212, 172, 255, 1)
                                      ],
                                      chartRadius: 42.w
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 7.w,),
                          Expanded(
                            child: Container(
                              height: 77.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.54),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 11.w,
                                children: [
                                  SvgPicture.asset("assets/mood_tracker/🦆 emoji _high voltage_.svg"),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("25%",style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      ),),
                                      Text("Focused",style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(255, 255, 255, 0.65)
                                      ),),
                                    ],
                                  ),
                                  PieChart(
                                      dataMap: {"Focused" : 25},
                                      totalValue: 100,
                                      chartType: ChartType.ring,
                                      ringStrokeWidth: 5,
                                      baseChartColor: Color.fromRGBO(115, 136, 169, 0.35),
                                      emptyColor: Color.fromRGBO(115, 136, 169, 0.35),
                                      legendOptions: LegendOptions(
                                        showLegends: false,
                                      ),
                                      chartValuesOptions: ChartValuesOptions(
                                        showChartValues: false,
                                      ),
                                      colorList: [
                                        Color.fromRGBO(246, 179, 0, 1)
                                      ],
                                      chartRadius: 42.w
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.h,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 77.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.54),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 11.w,
                                children: [
                                  SvgPicture.asset("assets/mood_tracker/🦆 emoji _high voltage_ (1).svg"),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("15%",style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      ),),
                                      Text("Energetic",style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(255, 255, 255, 0.65)
                                      ),),
                                    ],
                                  ),
                                  PieChart(
                                      dataMap: {"Energetic" : 15},
                                      totalValue: 100,
                                      chartType: ChartType.ring,
                                      ringStrokeWidth: 5,
                                      baseChartColor: Color.fromRGBO(115, 136, 169, 0.35),
                                      emptyColor: Color.fromRGBO(115, 136, 169, 0.35),
                                      legendOptions: LegendOptions(
                                        showLegends: false,
                                      ),
                                      chartValuesOptions: ChartValuesOptions(
                                        showChartValues: false,
                                      ),
                                      colorList: [
                                        Color.fromRGBO(135, 129, 255, 1)
                                      ],
                                      chartRadius: 42.w
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 7.w,),
                          Expanded(
                            child: Container(
                              height: 77.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.54),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 11.w,
                                children: [
                                  SvgPicture.asset("assets/mood_tracker/🦆 emoji _sleeping face_.svg"),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("10%",style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      ),),
                                      Text("Lazy",style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(255, 255, 255, 0.65)
                                      ),),
                                    ],
                                  ),
                                  PieChart(
                                      dataMap: {"Lazy" : 10},
                                      totalValue: 100,
                                      chartType: ChartType.ring,
                                      ringStrokeWidth: 5,
                                      baseChartColor: Color.fromRGBO(115, 136, 169, 0.35),
                                      emptyColor: Color.fromRGBO(115, 136, 169, 0.35),
                                      legendOptions: LegendOptions(
                                        showLegends: false,
                                      ),
                                      chartValuesOptions: ChartValuesOptions(
                                        showChartValues: false,
                                      ),
                                      colorList: [
                                        Color.fromRGBO(148, 148, 148, 1)
                                      ],
                                      chartRadius: 42.w
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 37.h,),
                      Row(
                        children: [
                          Text("Activity Suggestions",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(255, 255, 255, 1)
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Tips based on mood trends",style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(196, 141, 255, 1)
                          ),),
                        ],
                      ),
                      SizedBox(height: 31.h,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 93.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFF161035),
                        ),
                        child: Center(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20.w),
                            child: Text("✨ You’ve been energetic lately! Try to draw a pattern or starting a new hobby.",style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 37.h,),
                      Container(
                        width:  MediaQuery.of(context).size.width,
                        height: 4.h,
                        color: Color(0xFFC289FF),
                      ),
                      SizedBox(height: 21.h,),
                      TextButton(onPressed: (){},style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF9654FE),
                        fixedSize: Size( MediaQuery.of(context).size.width, 45.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(24),
                        )
                      ), child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,color: Colors.white,size: 17,),
                          Text("Add Mood ",style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),),
                        ],
                      )),
                      SizedBox(height: 51.h,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
