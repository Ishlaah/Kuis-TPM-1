import 'package:flutter/material.dart';

class LuasSegitigaPage extends StatefulWidget {
  @override
  _LuasSegitigaPageState createState() => _LuasSegitigaPageState();
}

class _LuasSegitigaPageState extends State<LuasSegitigaPage> {
  final _formKey = GlobalKey<FormState>();
  final _alasController = TextEditingController();
  final _tinggiController = TextEditingController();
  double _luas = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Segitiga'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _alasController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai alas';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Alas',
              ),
            ),
            TextFormField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai tinggi';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Tinggi',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  double alas = double.parse(_alasController.text);
                  double tinggi = double.parse(_tinggiController.text);
                  setState(() {
                    _luas = 0.5 * alas * tinggi;
                  });
                }
              },
              child: Text('Hitung'),
            ),
            Text('Luas Segitiga: $_luas'),
          ],
        ),
      ),
    );
  }
}
