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
        initialRoute: '/register_photo',
        routes: {
          '/register_photo': (context) => const RegisterPhoto(),
          '/capture_image': (context) => const CaptureImage(),
          '/submit_image': (context) => const SubmitImage(),
          '/home_page': (context) => const HomePage(),
        },
      );
  }
}