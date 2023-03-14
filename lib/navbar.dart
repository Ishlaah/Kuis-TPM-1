import 'package:flutter/material.dart';
import 'package:kuis_tpm/datadiri.dart';
import 'package:kuis_tpm/segitiga.dart';
import 'package:kuis_tpm/layang.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    Data(),
    Segitiga(),
    Layang(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kuis TPM IF-D"),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.architecture),
            label: 'Segitiga',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.architecture),
            label: 'Layang - Layang',
          ),
        ],
      ),
    );
  }

////////////////////////////////////////////////////////////
}
