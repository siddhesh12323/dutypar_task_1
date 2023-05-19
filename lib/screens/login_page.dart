import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<bool> selections = [true, false];
  bool mobileOrUsername = true;
  bool showpasswordTextField = false;
  //bool isTyping = false;
  // ignore: prefer_final_fields
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
          'Log in',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help_outline),
            color: Theme.of(context).iconTheme.color,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            children: [
              // Container(
              //   height: 88,
              //   color: Colors.white,
              //   width: MediaQuery.of(context).size.width,
              //   child: Center(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         SizedBox(width: 0,height: 88,),
              //         Spacer(),
              //         const Text(
              //             'Log in',
              //             style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
              //           ),
              //           Spacer(),
              //           IconButton(
              //               onPressed: () {},
              //               icon: const Icon(Icons.help_outline),
              //               color: Color.fromARGB(255,46, 58, 89),
              //             ),
              //       ],
              //     ),
              //   ),
              // ),
              Image.asset(
                'assets/images/dutypar_logo.png',
                height: 133,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 28,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text(
                    'Enter your credentials to continue',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              ToggleButtons(
                borderRadius: BorderRadius.circular(24),
                isSelected: selections,
                onPressed: (index) {
                  setState(() {
                    selections = selections.map((selected) => false).toList();
                    selections[index] = true;
                    if (index == 0) {
                      //Mobile Number chosen
                      mobileOrUsername = true;
                      showpasswordTextField = false;
                    }
                    if (index == 1) {
                      mobileOrUsername = false;
                      showpasswordTextField = true;
                    }
                  });
                },
                children: [
                  SizedBox(
                    width: 171.5,
                    child: Center(
                      child: Text(
                        'Mobile Number',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: mobileOrUsername
                                ? const Color.fromARGB(255, 2, 62, 138)
                                : const Color.fromARGB(255, 189, 189, 189)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 171.5,
                    child: Center(
                        child: Text(
                      'User Name',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: !mobileOrUsername
                              ? const Color.fromARGB(255, 2, 62, 138)
                              : const Color.fromARGB(255, 189, 189, 189)),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 328,
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
                      // onChanged: (value) {
                      //   setState(() {
                      //     isTyping = !isTyping;
                      //   });
                      //   isTyping = true;
                      // },
                      decoration: InputDecoration(
                        hintText:
                            mobileOrUsername ? 'Mobile Number' : 'User Name',
                        border: InputBorder.none,
                      ),
                      controller: _textEditingController,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: showpasswordTextField,
                child: Container(
                  width: 328,
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
                        // onChanged: (value) {
                        //   setState(() {
                        //     isTyping = !isTyping;
                        //   });
                        //   isTyping = true;
                        // },
                        decoration: const InputDecoration(
                          hintText: 'Enter Password',
                          border: InputBorder.none,
                        ),
                        controller: _passwordController,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                    'Log In',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/signup_page');
                },
              ),
              const SizedBox(
                height: 140,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
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
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shadowColor:
                                  const Color.fromARGB(64, 38, 36, 131),
                              content: Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  //       boxShadow: [
                                  //   BoxShadow(
                                  //     color: Color.fromARGB(64, 38, 36, 131),
                                  //     offset: Offset(0, 2),
                                  //     blurRadius: 20,
                                  //     //spreadRadius: 0,
                                  //   ),
                                  // ],
                                ),
                                height: 307,
                                width: 343,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    const Text(
                                      'Select Domain',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 28),
                                    ),
                                    const SizedBox(
                                      height: 33,
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        width: 311,
                                        height: 56,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 0, 127, 255),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          // isTyping ? 'SEND OTP': 'Log In',
                                          'Office',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                      onTap: () {
                                        //!Navigate to Office;
                                        Navigator.pushNamed(
                                            context, '/signup_page2');
                                      },
                                    ),
                                    const SizedBox(
                                      height: 33,
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        width: 327,
                                        height: 56,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            79,
                                            166,
                                            255,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          // isTyping ? 'SEND OTP': 'Log In',
                                          'Educational Institute',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      ),
                                      onTap: () {
                                        //!Navigate to Educational Institute;
                                        Navigator.pushNamed(
                                            context, '/signup_page2');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text(
                        "Sign Up",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
