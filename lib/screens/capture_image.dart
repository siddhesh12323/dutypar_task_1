
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CaptureImage extends StatefulWidget {
  const CaptureImage({super.key});

  @override
  State<CaptureImage> createState() => _CaptureImageState();
}

class _CaptureImageState extends State<CaptureImage> {
  //late Widget availablebuttons;
  bool showButtons = true;
  @override
  Widget build(BuildContext context) {
    Image image = Image(
      image: AssetImage('assets/images/default_person.png'),
      height: 340,
      width: MediaQuery.of(context).size.width,
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Face Registration',
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 600,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: image,
              )),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            child: Container(
                width: 140,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    'Capture',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )),
            onTap: () {
              //pickImage();
              Navigator.pushNamed(context, '/submit_image');
            },
          ),
        ],
      ),
    );
  }

  // Future pickImage() async {
  //   final image = await ImagePicker().pickImage(source: ImageSource.camera);
  //   if (image == null) {
  //     return;
  //   }
  //   final imageTemporary = File(image.path);
  //   this.image = imageTemporary;
  // }
}
