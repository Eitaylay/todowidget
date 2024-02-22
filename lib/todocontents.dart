import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoContents extends StatelessWidget {
  const ToDoContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Container of single contents that is Title, Drink.. and Todo button
        Container(
          width: 250,
          height: 122,
          // Change back to code if u want to see border of contents
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     color: Colors.black,
          //     width: 2,
          //   ),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Title",
                style: TextStyle(
                  fontSize: 20,
                  height: 2,
                ),
              ),
              const Text(
                "Drink 6 Litter of water",
                style: TextStyle(
                  fontSize: 15,
                  height: 2,
                ),
              ),
              ElevatedButton(
                child: Text("Todo"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC7D3B6),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
