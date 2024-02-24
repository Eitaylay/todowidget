import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleAndMenu extends StatelessWidget {
  const TitleAndMenu({super.key});

  final paleGreen = const Color(0xFFC7D3B6);
  final indigo = const Color(0xFF9AA7EA);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //First 2 buttons from top which is Today | Done
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 135,
              height: 35,
              color: indigo,
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              alignment: Alignment.center,
              child: const Text(
                "Today",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 135,
              height: 35,
              color: paleGreen,
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              alignment: Alignment.center,
              child: const Text(
                "Done",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        //Description in second row which is Today Tasks | Filter
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(bottom: 15),
              child: const Text(
                "Today Tasks",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
                child: const Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  print("Clicked Filter");
                }),
          ],
        ),
      ],
    );
  }
}
