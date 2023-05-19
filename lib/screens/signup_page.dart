import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController digit1controller = TextEditingController();
  TextEditingController digit2controller = TextEditingController();
  TextEditingController digit3controller = TextEditingController();
  TextEditingController digit4controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        toolbarHeight: 88,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'OTP verification',
          style: TextStyle(color: Colors.black),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const Icon(Icons.help_outline),
        //     color: Theme.of(context).iconTheme.color,
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            children: [
              const SizedBox(
                height: 64,
              ),
              const Text(
                'Enter OTP sent on +91 934** *****',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 119, 182),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 39,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Digit 1
                  Container(
                    width: 40,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12,2,0,0),
                        child: TextField(
                          // onChanged: (value) {
                          //   setState(() {
                          //     isTyping = !isTyping;
                          //   });
                          //   isTyping = true;
                          // },
                          maxLength: 1,
                          showCursor: false,
                          obscureText: true,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                          controller: digit1controller,
                        ),
                      ),
                    ),
                  ),
                  //Digit 2
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32,0,32,0),
                    child: Container(
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12,2,0,0),
                          child: TextField(
                            maxLength: 1,
                            showCursor: false,
                            obscureText: true,
                            obscuringCharacter: '*',
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              counterText: '',
                            ),
                            style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                            controller: digit2controller,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Digit 3
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,32,0),
                    child: Container(
                      width: 40,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12,2,0,0),
                          child: TextField(
                            showCursor: false,
                            maxLength: 1,
                            obscureText: true,
                            obscuringCharacter: '*',
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              counterText: '',
                            ),
                            style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                            controller: digit3controller,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Digit 4
                  Container(
                    width: 40,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12,2,0,0),
                        child: TextField(
                          showCursor: false,
                          maxLength: 1,
                          obscureText: true,
                          obscuringCharacter: '*',
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                          controller: digit4controller,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn't received OTP yet?",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(
                          255,
                          29,
                          35,
                          46,
                        )),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup_page');
                      },
                      child: const Text(
                        "Resend OTP",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(
                              255,
                              11,
                              107,
                              204,
                            )),
                      ))
                ],
              ),
              const SizedBox(
                height: 82,
              ),
              GestureDetector(
                child: Container(
                  width: 327,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 127, 255),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                      child: Text(
                    // isTyping ? 'SEND OTP': 'Log In',
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
                ),
                onTap: () {
                  //* Throw the user in the app
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
