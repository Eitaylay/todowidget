import 'package:flutter/material.dart';
import 'package:todowidgets/titleandmenu.dart';

import 'contentsbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget basics',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFC7D3B6),
        title: const Text(
          "TODO List",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            decoration: TextDecoration.underline,
            decorationThickness: 2,
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color(0xFFC1C9F2),
      ),
      body: Column(
        children: [
          Column(
            children: [
              const TitleAndMenu(),
              const ContentsBox(),
              Padding(
                padding: const EdgeInsets.all(8),
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  key: const Key('myFab'),
                  child: const Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
