import 'package:flutter/material.dart';

class KelilingLayangLayangPage extends StatefulWidget {
  @override
  _KelilingLayangLayangPageState createState() =>
      _KelilingLayangLayangPageState();
}

class _KelilingLayangLayangPageState extends State<KelilingLayangLayangPage> {
  final _formKey = GlobalKey<FormState>();
  final _sisi1Controller = TextEditingController();
  final _sisi2Controller = TextEditingController();
  double _keliling = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keliling Layang-Layang'),
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
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  double sisi1 = double.parse(_sisi1Controller.text);
                  double sisi2 = double.parse(_sisi2Controller.text);
                  setState(() {
                    _keliling = 2 * (sisi1 + sisi2);
                  });
                }
              },
              child: Text('Hitung'),
            ),
            Text('Keliling Layang-Layang: $_keliling'),
          ],
        ),
      ),
    );
  }
}
