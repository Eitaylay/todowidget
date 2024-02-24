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
  const MyHomePage({super.key});

  final paleGreen = const Color(0xFFC7D3B6);
  final indigo = const Color(0xFF9AA7EA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: paleGreen,
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
        actions: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: indigo,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: double.maxFinite,
        color: indigo,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: IconButton.filled(
        style: IconButton.styleFrom(
          backgroundColor: paleGreen.withOpacity(0.8),
          foregroundColor: Colors.white,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      body: const Column(
        children: [
          Column(
            children: [
              TitleAndMenu(),
              ContentsBox(),
            ],
          ),
        ],
      ),
    );
  }
}
