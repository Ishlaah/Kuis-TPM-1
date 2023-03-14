import 'package:flutter/material.dart';

class StickyNote extends StatelessWidget {
  final String text;

  StickyNote({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/ishlaah.jpeg',
              width: 300,
              height: 280,
            ),
            StickyNote(text: " "),
            StickyNote(text: " "),
            StickyNote(text: "Muhammad Nur Ishlaahudin S. - 123200097"),
            StickyNote(text: "IF - D"),
            StickyNote(text: "Hobbi Bermain Game"),
          ],
        ),
      ),
    );
  }
}
