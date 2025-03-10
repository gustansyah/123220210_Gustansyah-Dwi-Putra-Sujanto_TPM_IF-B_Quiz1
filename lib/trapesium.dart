import 'package:flutter/material.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({super.key});

  @override
  _TrapesiumPageState createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  final _sisiAtasController = TextEditingController();
  final _sisiBawahController = TextEditingController();
  final _tinggiController = TextEditingController();
  String _hasil = '';

  void _hitungTrapesium() {
    final sisiAtas = double.tryParse(_sisiAtasController.text) ?? 0;
    final sisiBawah = double.tryParse(_sisiBawahController.text) ?? 0;
    final tinggi = double.tryParse(_tinggiController.text) ?? 0;

    final luas = (sisiAtas + sisiBawah) * tinggi / 2;
    final keliling = sisiAtas + sisiBawah + 2 * (sisiBawah - sisiAtas).abs();

    setState(() {
      _hasil = 'Luas: $luas\nKeliling: $keliling';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Trapesium')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _sisiAtasController,
              decoration: InputDecoration(labelText: 'Panjang Sisi Atas'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _sisiBawahController,
              decoration: InputDecoration(labelText: 'Panjang Sisi Bawah'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _tinggiController,
              decoration: InputDecoration(labelText: 'Tinggi'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _hitungTrapesium, child: Text('Hitung')),
            SizedBox(height: 20),
            Text(_hasil, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
