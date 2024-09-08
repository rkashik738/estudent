
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login/pages/home_page/home_page.dart';

import '../controller/home_controller.dart';
import 'massage/massage.dart';
import 'notifaction/notifaction_page.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var navBarIteam = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.email_outlined), label: 'Massage'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none), label: 'Notifacation'),
    ];

    var navBody = [
      const HomePage(),
      const MassagePage(),
      const NotifactionPage()
    ];

    var controller = Get.put(HomeController());

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
            currentIndex: controller.currentNavIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.pink,
            backgroundColor: Colors.white,
            items: navBarIteam),
      ),
    );
  }
}
