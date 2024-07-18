import 'package:flutter/material.dart';
import 'package:login/constant/image_string.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.80,
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 225,
          child: PageView.builder(
            controller: pageController,
            itemBuilder: (_, index) {
              return AnimatedBuilder(
                animation: pageController,
                builder: (ctx, child) {
                  return child!;
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(40)),
                  margin: const EdgeInsets.all(6),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_book_outlined,
                        size: 70,
                      ),
                      Text(
                        aPrincipalText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Text(
                          aByPrincipal,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 3,
          ),
        ),
      ],
    );
  }
}
