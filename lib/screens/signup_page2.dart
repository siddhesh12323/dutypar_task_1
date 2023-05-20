import 'package:flutter/material.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  TextEditingController nameController = TextEditingController();
  TextEditingController orgainizationController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileotpController = TextEditingController();
  TextEditingController emailotpController = TextEditingController();
  bool isChecked = false;
  bool isMobileVerified = false;
  bool isEmailVerified = false;
  Color verifiedmobileSuffixColor = Color.fromARGB(
    255,
    36,
    206,
    133,
  );
  Color unverifiedmobileSuffixColor = Color.fromARGB(
    255,
    0,
    127,
    255,
  );
  Color verifiedemailSuffixColor = Color.fromARGB(
    255,
    36,
    206,
    133,
  );
  Color unverifiedemailSuffixColor = Color.fromARGB(
    255,
    0,
    127,
    255,
  );
  String unverifiedmobileSuffix = 'Send OTP';
  String verifiedmobileSuffix = 'Verified';
  String unverifiedemailSuffix = 'Send OTP';
  String verifiedemailSuffix = 'Verified';
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
          'Sign up',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dutypar_logo.png',
                height: 126,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Please fill the details to create account',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(
                      255,
                      0,
                      119,
                      182,
                    )),
              ),
              const SizedBox(
                height: 34,
              ),
              customtextfield1('Your Name', nameController),
              customtextfield1('Organization Name', orgainizationController),
              //! MOBILE NUMBER TEXTFIELD
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Container(
                  width: 327,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 250, 253),
                      border: Border.all(
                          color: const Color.fromARGB(231, 236, 243, 253)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          suffix: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                            child: GestureDetector(
                              child: isMobileVerified
                                  ? Text(
                                      verifiedmobileSuffix,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: verifiedmobileSuffixColor),
                                    )
                                  : Text(
                                      unverifiedmobileSuffix,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: unverifiedmobileSuffixColor),
                                    ),
                              onTap: () {
                                //!Send the OTP for mobile
                                setState(() {
                                  if (!isMobileVerified) {
                                    isMobileVerified = false;
                                  }
                                });
                              },
                            ),
                          ),
                          hintText: 'Mobile Number',
                          border: InputBorder.none,
                        ),
                        controller: mobileController,
                      ),
                    ),
                  ),
                ),
              ),
              //! Verify mobile OTP TEXTFIELD
              Visibility(
                visible: !isMobileVerified,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child: Container(
                    width: 327,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 250, 253),
                        border: Border.all(
                            color: const Color.fromARGB(231, 236, 243, 253)),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            suffix: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                              child: GestureDetector(
                                child: const Text(
                                  'Verify',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(
                                        255,
                                        242,
                                        78,
                                        30,
                                      )),
                                ),
                                onTap: () {
                                  //!verify mobile otp
                                  setState(() {
                                    isMobileVerified = true;
                                  });
                                },
                              ),
                            ),
                            hintText: 'Enter Mobile OTP',
                            border: InputBorder.none,
                          ),
                          controller: mobileotpController,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //! EMAIL TEXTFIELD
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Container(
                  width: 327,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 250, 253),
                      border: Border.all(
                          color: const Color.fromARGB(231, 236, 243, 253)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          suffix: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                            child: GestureDetector(
                              child: isEmailVerified
                                  ? Text(
                                      verifiedemailSuffix,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: verifiedemailSuffixColor),
                                    )
                                  : Text(
                                      unverifiedemailSuffix,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: unverifiedemailSuffixColor),
                                    ),
                              onTap: () {
                                //!Send the OTP based on email
                                setState(() {
                                  if (!isEmailVerified) {
                                    isEmailVerified = false;
                                  }
                                });
                              },
                            ),
                          ),
                          hintText: 'Email',
                          border: InputBorder.none,
                        ),
                        controller: emailController,
                      ),
                    ),
                  ),
                ),
              ),
              //! Verify email OTP TEXTFIELD
              Visibility(
                visible: !isEmailVerified,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child: Container(
                    width: 327,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 250, 253),
                        border: Border.all(
                            color: const Color.fromARGB(231, 236, 243, 253)),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: TextField(
                          decoration: InputDecoration(
                            suffix: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                              child: GestureDetector(
                                child: const Text(
                                  'Verify',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(
                                        255,
                                        242,
                                        78,
                                        30,
                                      )),
                                ),
                                onTap: () {
                                  //!verify email otp
                                  setState(() {
                                    isEmailVerified = true;
                                  });
                                },
                              ),
                            ),
                            hintText: 'Enter Email OTP',
                            border: InputBorder.none,
                          ),
                          controller: emailotpController,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: const Color.fromARGB(
                      255,
                      231,
                      236,
                      243,
                    ),
                    checkColor: const Color.fromARGB(
                      255,
                      0,
                      127,
                      255,
                    ),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text(
                    'I have read and accept the ',
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
                  // TextButton(onPressed: () {
                  //   //!Redirect to the terms and conditions
                  // }, child: const Text('terms and conditions', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromARGB(255,11, 107, 204,)),))
                  GestureDetector(
                      child: const Text(
                    'terms and conditions',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(
                          255,
                          11,
                          107,
                          204,
                        )),
                  )),
                ],
              ),
              const SizedBox(
                height: 27,
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
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
                ),
                onTap: () {
                  //Alert dialog
                  if (isMobileVerified && isEmailVerified) {
                    showAlertDialog(context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customtextfield1(
      String hinttext, TextEditingController textEditingController) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: Container(
        width: 327,
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 248, 250, 253),
            border: Border.all(color: const Color.fromARGB(231, 236, 243, 253)),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: TextField(
              // onChanged: (value) {
              //   setState(() {
              //     isTyping = !isTyping;
              //   });
              //   isTyping = true;
              // },
              decoration: InputDecoration(
                hintText: hinttext,
                border: InputBorder.none,
              ),
              controller: textEditingController,
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shadowColor: const Color.fromARGB(64, 38, 36, 131),
          content: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              //       boxShadow: [
              //   BoxShadow(
              //     color: Color.fromARGB(64, 38, 36, 131),
              //     offset: Offset(0, 2),
              //     blurRadius: 20,
              //     //spreadRadius: 0,
              //   ),
              // ],
            ),
            height: 330,
            width: 343,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Congratulations!',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Rashmi, welcome!',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color.fromARGB(
                        255,
                        93,
                        100,
                        112,
                      )),
                ),
                const SizedBox(
                  height: 36,
                ),
                const Text(
                  'Your account has been successfully created. Kindly login into the app using your registered mobile number.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(
                        255,
                        93,
                        100,
                        112,
                      )),
                ),
                const SizedBox(
                  height: 39,
                ),
                GestureDetector(
                  child: Container(
                    width: 311,
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 127, 255),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                        child: Text(
                      // isTyping ? 'SEND OTP': 'Log In',
                      'Ok',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                  ),
                  onTap: () {
                    //!Navigate to Office;
                    Navigator.of(context).pop(); // Close the first AlertDialog
                    showSecondAlertDialog(context);
                  },
                ),
                const SizedBox(
                  height: 13,
                ),
                GestureDetector(
                  child: Container(
                    width: 311,
                    height: 24,
                    // decoration: BoxDecoration(
                    //   color: const Color.fromARGB(
                    //     255,
                    //     79,
                    //     166,
                    //     255,
                    //   ),
                    //   borderRadius:
                    //       BorderRadius.circular(8),
                    // ),
                    child: const Center(
                        child: Text(
                      // isTyping ? 'SEND OTP': 'Log In',
                      'Cancel',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(
                            255,
                            0,
                            127,
                            255,
                          ),
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  onTap: () {
                    //!Navigate to Educational Institute;
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  showSecondAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shadowColor: const Color.fromARGB(64, 38, 36, 131),
          content: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            height: 330,
            width: 343,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Let's Get Started!",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Hey Rashmi,',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color.fromARGB(
                        255,
                        93,
                        100,
                        112,
                      )),
                ),
                const SizedBox(
                  height: 36,
                ),
                const Text(
                  "Let's get started by registering your smiling face.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(
                        255,
                        93,
                        100,
                        112,
                      )),
                ),
                const SizedBox(
                  height: 39,
                ),
                GestureDetector(
                  child: Container(
                    width: 311,
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        57,
                        123,
                        46,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                        child: Text(
                      // isTyping ? 'SEND OTP': 'Log In',
                      "Let's Start",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                  ),
                  onTap: () {
                    //!Navigate to Office;
                    Navigator.pushNamed(context,
                        '/register_photo'); // Close the first AlertDialog
                  },
                ),
                const SizedBox(
                  height: 13,
                ),
                GestureDetector(
                  child: Container(
                    width: 311,
                    height: 24,
                    // decoration: BoxDecoration(
                    //   color: const Color.fromARGB(
                    //     255,
                    //     79,
                    //     166,
                    //     255,
                    //   ),
                    //   borderRadius:
                    //       BorderRadius.circular(8),
                    // ),
                    child: const Center(
                        child: Text(
                      // isTyping ? 'SEND OTP': 'Log In',
                      'Cancel',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(
                            255,
                            0,
                            127,
                            255,
                          ),
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  onTap: () {
                    //!Navigate to Educational Institute;
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
