import 'package:flutter/material.dart';

// import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/constant/image_string.dart';

import '../../constant/text_string.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 237, 238, 239),
        ),
        child: ListView(
          children: const <Widget>[
            Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(aAshikImage),
                ),
                SizedBox(height: 10),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('ID :'), Text(idNumber)],
            ),
            Divider(
              color: Colors.deepPurple,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Level :'),
                Text(
                  classLavel,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 40,
                ),
                Text('Grade :'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  grade,
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold, color: green),
                ),
              ],
            ),
            Divider(
              color: Colors.deepPurple,
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.newspaper),
              title: Text('News'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.calendarCheck),
              title: Text('Attendance'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.chartColumn),
              title: Text('Result'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text('Message'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.system_security_update_good_sharp),
              title: Text('Event'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Pay Fees'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
