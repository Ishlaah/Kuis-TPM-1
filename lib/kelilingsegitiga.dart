import 'package:flutter/material.dart';

class KelilingSegitigaPage extends StatefulWidget {
  @override
  _KelilingSegitigaPageState createState() => _KelilingSegitigaPageState();
}

class _KelilingSegitigaPageState extends State<KelilingSegitigaPage> {
  final _formKey = GlobalKey<FormState>();
  final _sisi1Controller = TextEditingController();
  final _sisi2Controller = TextEditingController();
  final _sisi3Controller = TextEditingController();
  double _keliling = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keliling Segitiga'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _sisi1Controller,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai sisi 1';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Sisi 1',
              ),
            ),
            TextFormField(
              controller: _sisi2Controller,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai sisi 2';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Sisi 2',
              ),
            ),
            TextFormField(
              controller: _sisi3Controller,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Harap masukkan nilai sisi 3';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Sisi 3',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  double sisi1 = double.parse(_sisi1Controller.text);
                  double sisi2 = double.parse(_sisi2Controller.text);
                  double sisi3 = double.parse(_sisi3Controller.text);
                  setState(() {
                    _keliling = sisi1 + sisi2 + sisi3;
                  });
                }
              },
              child: Text('Hitung'),
            ),
            Text('Keliling Segitiga: $_keliling'),
          ],
        ),
      ),
    );
  }
}
