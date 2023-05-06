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
    HomeScreen(),
    MyTeamScreen(),
    AttendanceScreen(),
    NotificationScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: Container(
        height: 60,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
                child: Text(
                  'Home',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/profile_pic.png',
                  ),
                  radius: 20,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hi Rashmi!',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16,),
            Text(
                "${DateFormat('EEEE').format(DateTime.now())}, ${DateFormat('MMMM').format(DateTime.now())} ${DateFormat('d').format(DateTime.now())}", 
                style: TextStyle(color: Colors.grey, fontSize: 18),),
            const SizedBox(height: 50,),
            Container(
              height: 280,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(140)
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(image: AssetImage('assets/images/touch_screen.png',), width: 120, height: 120,),
                      const SizedBox(height: 14,),
                      Text('Mark In', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),)
                    ],
                  ),
                ),
              )
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                width: 280,
                child: Row(
                  children: [
                    Icon(Icons.location_pin),
                    Text('Location: You are not in office premises'),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                height: 180,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      VerticalDivider(width: 280, thickness: 2, color: Colors.grey,),
                      const SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(image: AssetImage('assets/images/in_time.png',), width: 60, height: 60,),
                              const SizedBox(height: 8,),
                              Text('08:30'),
                              const SizedBox(height: 8,),
                              Text('IN TIME', style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(image: AssetImage('assets/images/out_time.png'), width: 60, height: 60,),
                              const SizedBox(height: 8,),
                              Text('05:30'),
                              const SizedBox(height: 8,),
                              Text('OUT TIME', style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image(image: AssetImage('assets/images/working_hours.png'), width: 50, height: 50,),
                              const SizedBox(height: 16,),
                              Text('06:00'),
                              const SizedBox(height: 8,),
                              Text('WORKING HRS', style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
          ],
        )
      ],
    );
  }
}

class MyTeamScreen extends StatelessWidget {
  const MyTeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Teams Screen'),
    );
  }
}

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Notification Screen'),
    );
  }
}

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('More Screen'),
    );
  }
}