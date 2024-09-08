// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:login/auth.dart';

import 'package:login/pages/drawer/drawer.dart';

import 'package:login/pages/home_page/main_body.dart';
import 'package:login/pages/home_page/slider.dart';

import 'home_page_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      icon: const Icon(Icons.exit_to_app),
    );
  }

  //chart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
        actions: [
          _signOutButton(),
        ],
      ),
      body: const Column(
        children: [
          HomePageHeader(),
          SizedBox(
            height: 15,
          ),
          MySlider(),
          MainBodyWidgets(),
        ],
      ),
      drawer: const DrawerPage(),

      //
    );
  }
}
