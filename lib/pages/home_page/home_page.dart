import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/auth.dart';
import 'package:login/pages/drawer/drawer.dart';
import 'package:login/pages/home_page/slider.dart';

import 'card_icon.dart';
import 'main_body_card.dart';
import 'topbar_menu.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = Auth().currentUser;
  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('e-Student');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User Email');
  }

  Widget _signOutButton() {
    return IconButton(
      onPressed: signOut,
      icon: Icon(Icons.exit_to_app),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
        actions: [
          _signOutButton(),
        ],
      ),
      body: ListView(
        children: [
          const Expanded(
            child: Row(
              children: [
                ////Apply Leave\\\\
                TopbarMenu(
                  icones: FontAwesomeIcons.arrowUpFromBracket,
                  label: 'Apply Leave',
                ),
                ////Pay Fees\\\\
                TopbarMenu(
                  icones: FontAwesomeIcons.dollarSign,
                  label: 'Pay Fees',
                ),
                ////Meet Teacher\\\\
                TopbarMenu(
                  icones: FontAwesomeIcons.peopleArrows,
                  label: 'Meet Teacher',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ////top bar Menu End///
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            height: 680,
            width: double.infinity,
          
            /// box deco end
            child: const Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: MainBodyCard(
                          colour: Colors.pink,
                          cardChild: CardIcons(
                            icon: FontAwesomeIcons.pen,
                            label: 'Assignment',
                          ),
                        ),
                      ),
                      Expanded(
                        child: MainBodyCard(
                            colour: Colors.blue,
                            cardChild: CardIcons(
                              icon: FontAwesomeIcons.noteSticky,
                              label: 'Note',
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: MySlider(),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: MainBodyCard(
                            colour: Colors.deepPurple,
                            cardChild: CardIcons(
                              icon: FontAwesomeIcons.calendarDays,
                              label: 'School Calender',
                            )),
                      ),
                      Expanded(
                        child: MainBodyCard(
                            colour: Colors.deepOrange,
                            cardChild: CardIcons(
                              icon: FontAwesomeIcons.arrowsRotate,
                              label: 'Weekly Update',
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const DrawerPage(),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.email_outlined), label: 'Massage'),
          NavigationDestination(
              icon: Icon(FontAwesomeIcons.chartColumn), label: 'Result'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
