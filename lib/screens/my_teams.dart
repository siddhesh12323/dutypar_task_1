import 'package:flutter/material.dart';

class MyTeamsScreen extends StatefulWidget {
  const MyTeamsScreen({super.key});

  @override
  State<MyTeamsScreen> createState() => _MyTeamsScreenState();
}

class _MyTeamsScreenState extends State<MyTeamsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                    'My Team',
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
            
          ],
        ),
      ),
    );
  }
}