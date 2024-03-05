import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 662.w,
              height: 1024.h,
              color: const Color(0xff0e5d6a),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                    height: 1024.h,
                    width: 829.w,
                    fit: BoxFit.cover,
                    "assets/images/modern_salon.png"),
                    ],
            ),
            Container(
              height: 1024.h,
              width: 20.w,
              color: const Color(0xff0bb9121).withOpacity(1),
            ),
            Container(
              width: 683.w,
              height: 20.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      const Color(0xff0bb9121).withOpacity(1),
                      const Color(0xff0f4e57e).withOpacity(1),
                      const Color(0xff0bb9121).withOpacity(1),
                    ]),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 683.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [
                          const Color(0xff0bb9121).withOpacity(1),
                          const Color(0xff0f4e57e).withOpacity(1),
                          const Color(0xff0bb9121).withOpacity(1),
                        ]),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 64, bottom: 64, left: 64).w,
              width: 619.w,
              height: 896.h,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(240, 253, 255, 200).withOpacity(1),
                  borderRadius: BorderRadius.circular(16).w),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 88).w,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 54.h),
                      Image.asset(
                          height: 171.h, width: 144.9.w, "assets/images/salony_logo.png"),
                      SizedBox(height: 52.h),
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Center(
                          child: Text(
                            "Login form",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 28.sp),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Center(
                          child: Text(
                            "Lorem Ipsum has been the industry's standard ",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Poppins",
                              color: const Color(0xff0828487),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "dummy text ever since.",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Poppins",
                              color: const Color(0xff0828487),
                            ),
                          ),
                        ),
                        SizedBox(height: 32.h),
                        Text(
                          "Username",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color(0xff0828487),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        customFormField(
                            keyboardType: TextInputType.name,
                            labelText: "Enter Username",
                            prefixIcon: Image.asset("assets/images/Vector.png")),
                        SizedBox(height: 20.h),
                        Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color(0xff0828487),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        customFormField(
                            keyboardType: TextInputType.visiblePassword,
                            suffixIcon: Icon(Icons.circle_outlined),
                            obscureText: true,
                            labelText: "Enter password",
                            prefixIcon: Image.asset("assets/images/lock.png")),
                        SizedBox(height: 20.h),
                        Container(
                          height: 20.h,
                          child: MaterialButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                    color: const Color(0xff0e5d6a),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Container(
                          height: 48.h,
                          width: 443.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff0e5d6a),
                              borderRadius: BorderRadius.circular(58).w),
                          child: MaterialButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        )
                      ]),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget customFormField({
  Widget? prefixIcon,
  String? labelText,
  Widget? suffixIcon,
  required TextInputType keyboardType,
  bool obscureText = false,
}) =>
    Container(
      width: 440.w,
      height: 48.h,
      child: TextFormField(
          keyboardType: keyboardType,
          onTap: () {},
          obscureText: obscureText,
          controller: TextEditingController(),
          decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              labelText: labelText,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5.w, color: Colors.grey),
                  borderRadius: BorderRadius.circular(58).w),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  width: 0.5.w,
                  color: const Color(0xff0e5d6a),
                ),
                borderRadius: BorderRadius.circular(58).w,
              ))),
    );
