import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyTeamsScreen extends StatefulWidget {
  const MyTeamsScreen({super.key});

  @override
  State<MyTeamsScreen> createState() => _MyTeamsScreenState();
}

class _MyTeamsScreenState extends State<MyTeamsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 18;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //AppBar
            Container(
              width: width,
              //height: 110,
              height: 88,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 42, 0, 0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 52, 0, 8),
                    child: Text(
                      'My Team',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 42, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        //! NAVIGATE TO PROFILE PAGE
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/profile_pic.png',
                        ),
                        radius: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Team, Team Reports and Location Tabs
            Container(
              width: width,
              height: 110,
              //color: Colors.black,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/group.png'),
                          width: 65,
                          height: 65,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Team',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/visitor.png'),
                          width: 65,
                          height: 65,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Team Reports',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/location.png'),
                          width: 65,
                          height: 65,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Locations',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            verticaldivider(context),
            const SizedBox(
              height: 8,
            ),
            //Choose Date
            Container(
              width: width,
              height: 35,
              child: Center(
                child: Container(
                  height: 30,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/schedule.png'),
                        width: 22,
                        height: 22,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                          "${DateFormat('d').format(DateTime.now())} ${DateFormat('MMMM').format(DateTime.now())} ${DateTime.now().year}"),
                      const Spacer(),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: Icon(Icons.arrow_drop_up_sharp))),
                              //Flexible(child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_up_sharp))),
                              //const SizedBox(height: 5,),
                              //Flexible(child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_down_sharp))),
                              //Flexible(child: SizedBox(height: 10,))
                              Flexible(
                                  child: GestureDetector(
                                      onTap: () {},
                                      child:
                                          Icon(Icons.arrow_drop_down_sharp))),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            //Employee List
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 90,
              //color: Colors.purple,
              width: width,
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    const Image(
                      image: AssetImage('assets/images/profile1.png'),
                      height: 54,
                      width: 54,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          //it's a variable
                          color: Colors.green,
                        ),
                      ),
                    ),
                    //)
                  ]),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: 8,),
                      Text(
                        'Eric Fonseca',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Sales',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(135, 0, 0, 0)),
                      ),
                      //SizedBox(height: 8,)
                    ],
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/leftdown.png'),
                        height: 17,
                        width: 17,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(4, 0, 6, 0),
                        child: Text(
                          '10:30',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/rightup.png'),
                        height: 17,
                        width: 17,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                        child: Text(
                          '18:46',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            verticaldivider(context),
            Container(
              height: 90,
              width: width,
              child: Row(
                children: [
                  Stack(alignment: Alignment.center, children: [
                    const Image(
                      image: AssetImage('assets/images/profile2.png'),
                      height: 54,
                      width: 54,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          //it's a variable
                          color: Colors.red,
                        ),
                      ),
                    ),
                    //)
                  ]),
                  const SizedBox(
                    width: 12,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: 8,),
                      Text(
                        'John P',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Employee',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(135, 0, 0, 0)),
                      ),
                      //SizedBox(height: 8,)
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      //show dialog
                      showAlertDialog(context);
                    },
                    child: Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                            child: Icon(
                              Icons.warning,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Send Alert',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(135, 0, 0, 0)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            verticaldivider(context),
            Container(
              height: 90,
              width: width,
              child: Row(
                children: [
                  Stack(alignment: Alignment.center, children: [
                    const Image(
                      image: AssetImage('assets/images/profile3.png'),
                      height: 54,
                      width: 54,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          //it's a variable
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    //)
                  ]),
                  const SizedBox(
                    width: 12,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: 8,),
                      Text(
                        'Jack Henry',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Employee',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(135, 0, 0, 0)),
                      ),
                      //SizedBox(height: 8,)
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1),
                    ),
                    child: const Center(
                        child: Text(
                      'Casual Leave',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                //!Navigate to add user
                Navigator.pushNamed(context, '/add_user');
              },
              child: Container(
                height: 45,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 1),
                    color: const Color.fromARGB(
                      255,
                      32,
                      83,
                      166,
                    )),
                child: const Center(
                  child: Text(
                    'Add User',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Widget verticaldivider(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: 2,
      color: const Color.fromARGB(26, 0, 0, 0),
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
            ),
            height: 350,
            width: 343,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                const Image(
                  image: AssetImage('assets/images/warning.png'),
                  height: 95,
                  width: 95,
                ),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Alert Sent!',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                      color: Color.fromARGB(
                        255,
                        29,
                        35,
                        46,
                      )),
                ),
                const SizedBox(
                  height: 36,
                ),
                const Text(
                  'Attendance alert has been sent to John P.',
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
                    //Send Alert
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

  // Widget employeelist() {

  // }
}
