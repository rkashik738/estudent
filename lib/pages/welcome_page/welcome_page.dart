
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/login_reg.dart';


import '../../constant/image_string.dart';
import '../../constant/text_string.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Center(
                child: Image(
                  image: AssetImage(aWelcomeImage),
                  height: 300,
                ),
              ),
              const Text(
                aWelcomeText,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(() => const LoginPage()),
                  style: ElevatedButton.styleFrom(),
                  child: const Icon(Icons.arrow_forward_ios))
            ],
          ),
        ));
  }
}
