import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/music_image.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

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
            colors: [Color(0xFF5D4094), Color(0xFF00152A)],
            stops: [0.0, 1.0],
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            // Profile Header Card
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20) ,
                              decoration: BoxDecoration(
                                color: const Color(0xFF190739),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  // Profile Image with Edit Icon
                                  Stack(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color(0xFFE8D5B7),
                                            width: 3,
                                          ),
                                        ),
                                        child: ClipOval(
                                          child: Image.asset(
                                            'home_page/steve.png',
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                                  return Container(
                                                    color: const Color(
                                                      0xFFE8D5B7,
                                                    ),
                                                    child: const Icon(
                                                      Icons.person,
                                                      size: 35,
                                                      color: Colors.grey,
                                                    ),
                                                  );
                                                },
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.edit,
                                            size: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  // Name
                                  const Text(
                                    'Steve Rogers',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  // Level Info
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 3,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF7B68EE),
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        child: const Text(
                                          '⭐ Beginner',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      const Text(
                                        '• Lv. 3',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            // Edit Profile Card
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 25.w),
                              decoration: BoxDecoration(
                                color: const Color(0xFF190739),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title with gradient text
                                  RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Edit ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Profile',
                                          style: TextStyle(
                                            color: Color(0xFF9B59B6),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  // Form Fields
                                  Form(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("First Name",style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white
                                      ),),
                                      SizedBox(
                                        height: 45.h,
                                        width: MediaQuery.of(context).size.width,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: "Steve",
                                            hintStyle: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFA1A4B2),
                                            ),
                                            filled: true,
                                            fillColor: Color.fromRGBO(242, 243, 247, 0.07),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                color: Color.fromRGBO(151, 55, 255, 1),
                                                width: 0.15
                                              )
                                            )
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 17.h,),
                                      Text("Last Name",style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      ),),
                                      SizedBox(
                                        height: 45.h,
                                        width: MediaQuery.of(context).size.width,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: "Rogers",
                                              hintStyle: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFA1A4B2),
                                              ),
                                              filled: true,
                                              fillColor: Color.fromRGBO(242, 243, 247, 0.07),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(151, 55, 255, 1),
                                                      width: 0.15
                                                  )
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 17.h,),
                                      Text("Email",style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      ),),
                                      SizedBox(
                                        height: 45.h,
                                        width: MediaQuery.of(context).size.width,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: "steve12@gmail.com",
                                              hintStyle: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFA1A4B2),
                                              ),
                                              filled: true,
                                              fillColor: Color.fromRGBO(242, 243, 247, 0.07),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(151, 55, 255, 1),
                                                      width: 0.15
                                                  )
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 17.h,),
                                      Text("Date of Birth",style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      ),),
                                      SizedBox(
                                        height: 45.h,
                                        width: MediaQuery.of(context).size.width,
                                        child: TextFormField(
                                          keyboardType:TextInputType.none,
                                          onTap: () {
                                            showDatePicker(context: context, firstDate: DateTime(1500), lastDate: DateTime(2100));
                                          },
                                          decoration: InputDecoration(
                                              hintText: "dd/mm/yyyy",
                                              hintStyle: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFA1A4B2),
                                              ),
                                              filled: true,
                                              fillColor: Color.fromRGBO(242, 243, 247, 0.07),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                  borderSide: BorderSide(
                                                      color: Color.fromRGBO(151, 55, 255, 1),
                                                      width: 0.15
                                                  )
                                              )
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 62.h,),
                                      TextButton(onPressed: (){},
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color(0xFF9654FE),
                                              fixedSize: Size(MediaQuery.of(context).size.width, 45.h),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusGeometry.circular(24),
                                              )
                                          ),
                                          child: Text("Save changes",style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white
                                          ),)),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20), // Bottom padding
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
           // MusicImage(),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(
    String label,
    String value, {
    bool isPlaceholder = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFF1E1240),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            value,
            style: TextStyle(
              color: isPlaceholder ? Colors.white38 : Colors.white70,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
