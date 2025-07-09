import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiss_app/views/register/widgets/RegisterTextField.dart';
import 'package:swiss_app/views/register/widgets/password_text_field.dart';

import '../widgets/button.dart';
import '../widgets/music_image.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPasswordVisible = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            colors: [
              Color(0xFF5D4094),
              Color(0xFF00152A),
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              MusicImage(),
              Padding(
                padding: EdgeInsets.only(left: 25.w,right: 25.w,top: 45.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //text
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Sign',
                                  style: TextStyle(
                                    color: Color(0xff9654FE),
                                    fontSize: 32.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: ' up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20.h),

                          // Fist name input
                          RegisterTextField(title: 'First Name ', hintText: 'First Name',),

                          SizedBox(height: 20.h),

                          // Last name input
                          RegisterTextField(title: 'Last Name ', hintText: 'Last Name',),

                          SizedBox(height: 15.h),

                          //email
                          RegisterTextField(title: 'Email ', hintText: 'example@gmail.com',),

                          SizedBox(height: 15.h),

                          //password
                          PasswordTextField(isPasswordVisible: true, title: 'Password ', hintText: 'Password ',),

                          SizedBox(height: 15.h),

                          //confirm password
                          PasswordTextField(isPasswordVisible: true, title: 'Confirm Password ', hintText: 'Confirm Password ',),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 38.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account? ",style:TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Text("Login",style:TextStyle(
                                  color: Color(0xff9654FE),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ],
                          ),
                  
                  
                          SizedBox(height: 10.h),
                  
                          Button(
                            title: "Sign Up",
                            onTap: (){
                              Navigator.pushReplacementNamed(context, '/calibration');
                            },
                          ),
                          SizedBox(height: 50.h,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}