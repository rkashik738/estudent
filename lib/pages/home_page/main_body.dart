import 'package:flutter/material.dart';
import 'package:login/constant/image_string.dart';




class MainBodyWidgets extends StatefulWidget {
  const MainBodyWidgets({
    super.key,
  });

  @override
  State<MainBodyWidgets> createState() => _MainBodyWidgetsState();
}

class _MainBodyWidgetsState extends State<MainBodyWidgets> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ImageIcon(
                      AssetImage('assets/images/assignment.png'),
                      size: 40,
                    ),
                    Text("Assignment"),
                  ],
                ),
                Column(
                  children: [
                    ImageIcon(
                      AssetImage(aCalandericon),
                      size: 40,
                    ),
                    Text("Calander"),
                  ],
                ),
                Column(
                  children: [
                    ImageIcon(
                      AssetImage(aResulticon),
                      size: 40,
                    ),
                    Text("Result"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ImageIcon(
                      AssetImage(aAttendaceicon),
                      size: 40,
                    ),
                    Text("Attendance"),
                  ],
                ),
                Column(
                  children: [
                    ImageIcon(
                      AssetImage(aNewsicon),
                      size: 40,
                    ),
                    Text("News"),
                  ],
                ),
                Column(
                  children: [
                    ImageIcon(
                      AssetImage(aEventicon),
                      size: 40,
                    ),
                    Text("Event"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
         
            
          ],
        ),
      ),
    );
  }
}
