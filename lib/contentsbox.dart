import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todowidgets/todocontents.dart';
import 'donecontents.dart';

class ContentsBox extends StatelessWidget {
  const ContentsBox({super.key});

  final paleGreen = const Color(0xFFC7D3B6);
  final indigo = const Color(0xFF9AA7EA);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //Column of 3 container box and its contents
        Column(
          children: [
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  color: paleGreen,
                  margin: const EdgeInsets.all(15),
                ),
                ToDoContents(),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  color: paleGreen,
                  margin: const EdgeInsets.all(15),
                ),
                ToDoContents(),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  color: paleGreen,
                  margin: const EdgeInsets.all(15),
                ),
                DoneContents(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
