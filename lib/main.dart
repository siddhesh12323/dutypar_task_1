import 'package:dutypar_task_1/screens/image_authentication.dart';
import 'package:dutypar_task_1/screens/login_page.dart';
import 'package:dutypar_task_1/screens/mark_attendance.dart';
import 'package:dutypar_task_1/screens/signup_page.dart';
import 'package:dutypar_task_1/screens/signup_page2.dart';
import 'package:flutter/material.dart';

import 'screens/capture_image.dart';
import 'screens/home_page.dart';
import 'screens/register_photo.dart';
import 'screens/submit_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dutypar',
        initialRoute: '/home_page',
        routes: {
          '/register_photo': (context) => const RegisterPhoto(),
          '/capture_image': (context) => const CaptureImage(),
          '/submit_image': (context) => const SubmitImage(),
          '/home_page': (context) => const HomePage(),
          '/login_page':(context) => const LoginPage(),
          '/signup_page':(context) => const SignUp(),
          '/signup_page2':(context) => const SignUp2(),
          '/mark_attendance':(context) => const MarkAttendance(),
          '/authenticate_image':(context) => const AuthenticateImage(),
        },
      );
  }
}