import 'package:flutter/material.dart';

class LuasLayangLayangPage extends StatefulWidget {
  @override
  _LuasLayangLayangPageState createState() => _LuasLayangLayangPageState();
}

class _LuasLayangLayangPageState extends State<LuasLayangLayangPage> {
  final _formKey = GlobalKey<FormState>();
  final _diagonal1Controller = TextEditingController();
  final _diagonal2Controller = TextEditingController();
  double _luas = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Layang-Layang'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _diagonal1Controller,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai diagonal 1';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Diagonal 1',
              ),
            ),
            TextFormField(
              controller: _diagonal2Controller,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai diagonal 2';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Diagonal 2',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  double diagonal1 = double.parse(_diagonal1Controller.text);
                  double diagonal2 = double.parse(_diagonal2Controller.text);
                  setState(() {
                    _luas = diagonal1 * diagonal2 / 2;
                  });
                }
              },
              child: Text('Hitung'),
            ),
            Text('Luas Layang-Layang: $_luas'),
          ],
        ),
      ),
    );
  }
}
