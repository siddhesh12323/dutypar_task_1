import 'package:flutter/material.dart';

class AuthenticateImage extends StatefulWidget {
  const AuthenticateImage({super.key});

  @override
  State<AuthenticateImage> createState() => _AuthenticateImageState();
}

class _AuthenticateImageState extends State<AuthenticateImage> {
  Image image = const Image(
    image: AssetImage('assets/images/default_person.png'),
    height: 250,
    width: 250,
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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back)),
                      const Spacer(),
                      const Text(
                        'Authentication',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      Container(
                        height: 24,
                        width: 36,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              image,
              const SizedBox(
                height: 100,
              ),
              Container(
                //color: Colors.red,
                height: 220,
                width: MediaQuery.of(context).size.width - 40,
                child: Column(
                  children: [
                    checkingFactors('Facial recognition'),
                    verticaldivider(context),
                    checkingFactors('Live image'),
                    verticaldivider(context),
                    checkingFactors('Location'),
                    verticaldivider(context),
                    checkingFactors('Attendance Marked'),
                    verticaldivider(context),
                  ],
                ),
              ),
              //const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home_page');
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 244, 241, 241),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Attendance Marked Successfully',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 28,
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget checkingFactors(String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(
                  255,
                  29,
                  35,
                  46,
                )),
          ),
          const Spacer(),
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 28,
          )
        ],
      ),
    );
  }

  Widget verticaldivider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        height: 2,
        color: const Color.fromARGB(26, 0, 0, 0),
      ),
    );
  }
}
