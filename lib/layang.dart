import 'package:flutter/material.dart';
import 'kelilinglayang.dart';
import 'luaslayang.dart';

class Layang extends StatefulWidget {
  const Layang({Key? key}) : super(key: key);

  @override
  _LayangState createState() => _LayangState();
}

class _LayangState extends State<Layang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: const Text('Luas'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return LuasLayangLayangPage();
            }));
          },
        ),
        OutlineButton(
          child: const Text('Keliling'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return KelilingLayangLayangPage();
            }));
          },
        ),
      ],
    ));
  }
}
