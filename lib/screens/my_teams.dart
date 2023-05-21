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
                      const Image(image: AssetImage('assets/images/schedule.png'), width: 22, height: 22,),
                      const SizedBox(width: 4,),
                      Text("${DateFormat('d').format(DateTime.now())} ${DateFormat('MMMM').format(DateTime.now())} ${DateTime.now().year}"),
                      const Spacer(),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                              //mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(child: GestureDetector(onTap: () {}, child: Icon(Icons.arrow_drop_up_sharp))),
                                //Flexible(child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_up_sharp))),
                                //const SizedBox(height: 5,),
                                //Flexible(child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_drop_down_sharp))),
                                //Flexible(child: SizedBox(height: 10,))
                                Flexible(child: GestureDetector(onTap: () {}, child: Icon(Icons.arrow_drop_down_sharp))),
                              ],
                            ),
                        ),
                      ),
                      const SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),
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
}
