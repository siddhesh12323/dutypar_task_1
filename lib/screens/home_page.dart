import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeScreen(),
    const MyTeamScreen(),
    const AttendanceScreen(),
    const NotificationScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Offstage(
            offstage: _currentIndex != 0,
            child: TickerMode(enabled: _currentIndex == 0, child: _children[0]),
          ),
          Offstage(
            offstage: _currentIndex != 1,
            child: TickerMode(enabled: _currentIndex == 1, child: _children[1]),
          ),
          Offstage(
            offstage: _currentIndex != 2,
            child: TickerMode(enabled: _currentIndex == 2, child: _children[2]),
          ),
          Offstage(
            offstage: _currentIndex != 3,
            child: TickerMode(enabled: _currentIndex == 3, child: _children[3]),
          ),
          Offstage(
            offstage: _currentIndex != 4,
            child: TickerMode(enabled: _currentIndex == 4, child: _children[4]),
          ),
        ],
      ),
      // ignore: sized_box_for_whitespace
      bottomNavigationBar: Container(
        height: 60,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(
              icon:
                  //ImageIcon(AssetImage('assets/images/home_icon.png'), color: Colors.lightBlue,),
                  Image(
                image: AssetImage('assets/images/home_icon.png'),
                width: 22,
                height: 22,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/teams_icon.png'),
                width: 22,
                height: 22,
              ),
              label: 'My Team',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/attendance_icon.png'),
                width: 22,
                height: 22,
              ),
              label: 'Attendance',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/notification_icon.png'),
                width: 22,
                height: 22,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/more_icon.png'),
                width: 22,
                height: 22,
              ),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
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
                    'Home',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
          const SizedBox(
            height: 10,
          ),
          // App Body
          // Greeting to the user
          const Text(
            'Hi Rashmi!',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 4,
          ),
          // Current day and date
          Text(
            "${DateFormat('EEEE').format(DateTime.now())}, ${DateFormat('MMMM').format(DateTime.now())} ${DateFormat('d').format(DateTime.now())}",
            style: const TextStyle(
                color: Color.fromARGB(
                  255,
                  93,
                  100,
                  112,
                ),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 44,
          ),
          // Mark In Button
          GestureDetector(
            onTap: () {
              //!Navigate to mark attendance screen
              Navigator.pushNamed(context, '/mark_attendance');
            },
            child: Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 79, 166, 255),
                  borderRadius: BorderRadius.circular(120)),
              child: const Column(
                children: [
                  SizedBox(
                    height: 27,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/touch_screen.png',
                    ),
                    width: 100,
                    height: 117,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Mark In',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(
                          255,
                          29,
                          35,
                          46,
                        )),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          // Location Information
          Container(
            // width: 280,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_pin),
                Text(
                  'Location: You are not in office premises',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
          // Time information
          // ignore: sized_box_for_whitespace
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 14),
            child: Container(
              height: 130,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 2,
                    color: const Color.fromARGB(26, 0, 0, 0),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/in_time.png',
                            ),
                            width: 48,
                            height: 48,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '08:30',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'IN TIME',
                            style: TextStyle(
                                color: Color.fromARGB(120, 0, 0, 0),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(
                            image: AssetImage('assets/images/out_time.png'),
                            width: 48,
                            height: 48,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '05:30',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'OUT TIME',
                            style: TextStyle(
                                color: Color.fromARGB(120, 0, 0, 0),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(
                            image:
                                AssetImage('assets/images/working_hours.png'),
                            width: 47,
                            height: 44,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            '06:00',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'WORKING HRS',
                            style: TextStyle(
                                color: Color.fromARGB(120, 0, 0, 0),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Pagess for bottom navigation bar
class MyTeamScreen extends StatelessWidget {
  const MyTeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Teams Screen'),
    );
  }
}

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Notification Screen'),
    );
  }
}

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('More Screen'),
    );
  }
}
