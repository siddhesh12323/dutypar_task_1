import 'package:flutter/material.dart';

class AuthenticateImage extends StatefulWidget {
  const AuthenticateImage({super.key});

  @override
  State<AuthenticateImage> createState() => _AuthenticateImageState();
}

class _AuthenticateImageState extends State<AuthenticateImage> {
  Image image = const Image(
      image: AssetImage('assets/images/default_person.png'),
      height: 225,
      width: 206,
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
            height: 88,
            // child: Padding(
            //   padding: ,
            //   child: Text(
            //         'Authentication',
            //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //       ),,
            // )
          ),
              image,
              const SizedBox(
                height: 100,
              ),
              Container(
                color: Colors.red,
                height: 220,
                width: MediaQuery.of(context).size.width - 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}