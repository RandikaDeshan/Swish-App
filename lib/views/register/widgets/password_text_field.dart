import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextField extends StatefulWidget {

  TextEditingController? _emailController;
  bool isPasswordVisible;
  final String title;
  final String hintText;

  PasswordTextField({super.key, required this.isPasswordVisible, required this.title, required this.hintText});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: Color(0xff9654FE).withOpacity(0.5),
              width: 1,
            ),
          ),
          child: TextField(
            controller: widget._emailController,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
            ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(0.7),
                fontSize: 16.sp,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 16.h,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  widget.isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.grey.withOpacity(0.7),
                  size: 22.sp,
                ),
                onPressed: () {
                  setState(() {
                    widget.isPasswordVisible = widget.isPasswordVisible;
                  });
                },
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ],
    );
  }
}
