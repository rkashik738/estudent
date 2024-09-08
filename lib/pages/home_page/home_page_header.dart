import 'package:flutter/material.dart';



class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.outbox_outlined,
                size: 35,
              ),
            ),
            const Text('Apply Leave'),
          ],
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_money_sharp,
                size: 35,
              ),
            ),
            const Text('Pay Fees'),
          ],
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.co_present_outlined,
                size: 35,
              ),
            ),
            const Text('Meet Teacher'),
          ],
        )
      ],
    );
  }
}