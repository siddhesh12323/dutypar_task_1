import 'package:flutter/material.dart';

class SubmitImage extends StatefulWidget {
  const SubmitImage({super.key});

  @override
  State<SubmitImage> createState() => _SubmitImageState();
}

class _SubmitImageState extends State<SubmitImage> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                    width: 140,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.grey),
                    child: Center(
                      child: Text(
                        'Retake',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )),
                onTap: () {
                  //retake function
                },
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
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )),
                onTap: () {
                  //pickImage();
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/check.png'),
                                    height: 175,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Profile Registered Successfully',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  GestureDetector(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          16,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color: Colors.blue),
                                      child: Center(
                                        child: Text(
                                          "Let's Go",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(
                                          context, '/home_page');
                                      
                                    },
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Back',
                                        style: TextStyle(color: Colors.grey),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
