import 'package:expense_tracker2/components/icon_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Welcome',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Back!',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            filled: true,
                            fillColor: const Color(0xFFF3F3F3),
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Color.fromARGB(102, 88, 88, 88),
                            ),
                            hintText: 'Username or Email',
                          ),
                        ),
                      ),
                      SizedBox(height: 31.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            filled: true,
                            fillColor: const Color(0xFFF3F3F3),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color.fromARGB(102, 88, 88, 88),
                            ),
                            suffixIcon: const Icon(
                              Icons.visibility,
                              color: Color.fromARGB(102, 88, 88, 88),
                            ),
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      SizedBox(height: 9.h),
                      Padding(
                        padding: EdgeInsets.only(right: 17.w),
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Color(0xFFF83758)),
                          ),
                        ),
                      ),
                      SizedBox(height: 52.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF83758),
                                padding: EdgeInsets.symmetric(vertical: 21.h),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.r))),
                            child: Text(
                              'Login',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 75.h),
                      const Text('- OR Continue with -'),
                      SizedBox(height: 20.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Google Icon Button
                            IconLink(
                              image: 'assets/images/google.png',
                              onTap: () {},
                            ),
                            SizedBox(
                              // height: 20.h,
                              width: 10.w,
                            ),
                            IconLink(
                              image: 'assets/images/apple.png',
                              onTap: () {},
                            ),
                            SizedBox(
                              // height: 20.h,
                              width: 10.w,
                            ),
                            IconLink(
                              image: 'assets/images/facebook.png',
                              onTap: () {},
                            ),
                          ]),
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Create An Account',
                            style: GoogleFonts.montserrat(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 5.w),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign up',
                              style: GoogleFonts.montserrat(
                                color: const Color(0xFFF83758),
                                decoration: TextDecoration.underline,
                                decorationColor: const Color(0xFFF83758),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
