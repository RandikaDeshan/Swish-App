import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalibrationFour extends StatefulWidget {
  const CalibrationFour({super.key});

  @override
  State<CalibrationFour> createState() => _CalibrationFourState();
}

class _CalibrationFourState extends State<CalibrationFour> {
  String? selectedImagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Upload your',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Image',
                style: TextStyle(
                  color: Color(0xffC48DFF),
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Container(width: double.infinity,),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image Upload Circle
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.shade400,
                      width: 2.w,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Dashed border effect
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 1.w,
                          ),
                        ),
                      ),
                      // Content
                      Center(
                        child: selectedImagePath == null
                            ? Icon(
                          Icons.camera_alt_outlined,
                          size: 60.sp,
                          color: Colors.grey.shade500,
                        )
                            : ClipRRect(
                          borderRadius: BorderRadius.circular(100.r),
                          child: Image.asset(
                            selectedImagePath!,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Tap area
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100.r),
                            onTap: () {
                              _showImageSelectionDialog();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
        // Add Photo Button
        InkWell(
          onTap: () {
            _showImageSelectionDialog();
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            width: MediaQuery.of(context).size.width,
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Center(
              child: Text(
                'Add Photo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff9654FE),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showImageSelectionDialog() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Color(0xff2A1B47),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Select Image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSelectionOption(
                      icon: Icons.photo_library,
                      label: 'Gallery',
                      onTap: () {
                        Navigator.pop(context);
                        // Implement gallery selection
                        // You'll need to add image_picker package
                        _selectFromGallery();
                      },
                    ),
                    _buildSelectionOption(
                      icon: Icons.photo_camera,
                      label: 'Camera',
                      onTap: () {
                        Navigator.pop(context);
                        // Implement camera selection
                        // You'll need to add image_picker package
                        _selectFromCamera();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSelectionOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: Color(0xff9654FE),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 30.sp,
              color: Colors.white,
            ),
            SizedBox(height: 8.h),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectFromGallery() {
    // Implement gallery selection logic here
    // You'll need to add image_picker package and implement the logic
    print('Select from gallery');
  }

  void _selectFromCamera() {
    // Implement camera selection logic here
    // You'll need to add image_picker package and implement the logic
    print('Select from camera');
  }
}