import 'package:flutter/material.dart';

class HariPage extends StatefulWidget {
  const HariPage({super.key});

  @override
  _HariPageState createState() => _HariPageState();
}

class _HariPageState extends State<HariPage> {
  final _inputHariController = TextEditingController();
  String _hariNama = '';

  void _cekHari() {
    final angkaHari = int.tryParse(_inputHariController.text) ?? 0;

    switch (angkaHari) {
      case 1:
        setState(() {
          _hariNama = 'Senin';
        });
        break;
      case 2:
        setState(() {
          _hariNama = 'Selasa';
        });
        break;
      case 3:
        setState(() {
          _hariNama = 'Rabu';
        });
        break;
      case 4:
        setState(() {
          _hariNama = 'Kamis';
        });
        break;
      case 5:
        setState(() {
          _hariNama = 'Jumat';
        });
        break;
      case 6:
        setState(() {
          _hariNama = 'Sabtu';
        });
        break;
      case 7:
        setState(() {
          _hariNama = 'Minggu';
        });
        break;
      default:
        setState(() {
          _hariNama = 'Hari tidak valid';
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Penghitung Hari')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _inputHariController,
              decoration: InputDecoration(labelText: 'Masukkan angka (1-7)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _cekHari, child: Text('Cek Hari')),
            SizedBox(height: 20),
            Text(_hariNama, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
