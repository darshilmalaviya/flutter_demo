// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Log in screen controller
  TextEditingController emailcntrl = TextEditingController();
  TextEditingController passcntrl = TextEditingController();
  var show = false;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffD7E5FF),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 8.h,
                            width: 150.w,
                            margin: const EdgeInsets.only(top: 410),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.w, top: 1.5.h),
                              child: TextFormField(
                                controller: emailcntrl,
                                validator: (value) {
                                  // Email validator
                                  bool validEmail = RegExp(
                                          "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$")
                                      .hasMatch(value!);
                                  if (validEmail) {
                                    return null;
                                  } else {
                                    return "Invalid Email";
                                  }
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                  hintText: "Email",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 8.h,
                            width: 150.w,
                            margin: EdgeInsets.only(top: 2.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.w, top: 1.5.h),
                              child: TextFormField(
                                controller: passcntrl,
                                validator: (value) {
                                  bool validPass = RegExp(
                                          "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$")
                                      .hasMatch(value!);
                                  if (validPass) {
                                    return null;
                                  } else {
                                    return "Invalid Password";
                                  }
                                },
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: show,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            show = !show;
                                          },
                                        );
                                      },
                                      icon: show == true
                                          ? const Icon(
                                              Icons.visibility_off,
                                              color: Colors.grey,
                                              size: 20,
                                            )
                                          : const Icon(
                                              Icons.visibility,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                    ),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.h),
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 40.sp),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.h, left: 40.w),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: IconButton(
                                    onPressed: () {
                                      if (formkey.currentState!.validate()) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text("Log In Sucess"),
                                          ),
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content:
                                                Text("Something Wen't Wrong"),
                                          ),
                                        );
                                      }
                                    },
                                    icon: const Icon(Icons.arrow_forward),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -50.w,
                      child: Container(
                        height: 40.h,
                        width: 100.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffB0CBFF),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -40.h,
                      left: -50.w,
                      child: Container(
                        height: 70.h,
                        width: 150.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 60.w, top: 50.h),
                          child: Text(
                            "Welcome\nBack",
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
