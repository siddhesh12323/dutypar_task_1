import 'package:flutter/material.dart';

class RegisterPhoto extends StatefulWidget {
  const RegisterPhoto({super.key});

  @override
  State<RegisterPhoto> createState() => _RegisterPhotoState();
}

class _RegisterPhotoState extends State<RegisterPhoto> {
  List<String> points = [
    'Only your face should be captured',
    'Moving objects should not be present in the background',
    'Make sure you will capture photos without a mask while registering',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 95, 24, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image(
                image: AssetImage('assets/images/scan_face.png'),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              'How to register your photo?',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                '1. Only your face should be captured',
                style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
            Text('2. Moving objects should not be present in the background', style: TextStyle(fontSize: 18),),
            const SizedBox(
              height: 4,
            ),
            Text('3. Make sure you will capture photos without a mask while registering', style: TextStyle(fontSize: 18),),
              ],
            ),
            // Flexible(child: 
            // ListView(
            //   padding: EdgeInsets.all(0),
            //   shrinkWrap: true,
            //   children: [
            //     ListTile(leading: Text('1. ', style: TextStyle(fontSize: 18),),
            //     title: Text('Only your face should be captured', style: TextStyle(fontSize: 18),)),
            //     ListTile(leading: Text('2. ', style: TextStyle(fontSize: 18),),
            //     title: Text('Moving objects should not be present in the background', style: TextStyle(fontSize: 18),)),
            //     ListTile(leading: Text('3. ', style: TextStyle(fontSize: 18),),
            //     title: Text('Make sure you will capture photos without a mask while registering', style: TextStyle(fontSize: 18),)),
            //   ],
            // )),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              child: Container(
                  width: MediaQuery.of(context).size.width - 48,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.green),
                  child: Center(
                    child: Text('Register Photo',
                        style: TextStyle(color: Colors.white, fontSize: 16),),
                  )),
              onTap: () {
                Navigator.pushNamed(context, '/capture_image');
              },
            )
          ],
        ),
      ),
    );
  }
}
