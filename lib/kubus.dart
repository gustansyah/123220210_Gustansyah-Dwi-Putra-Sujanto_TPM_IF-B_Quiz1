import 'package:flutter/material.dart';

class KubusPage extends StatefulWidget {
  const KubusPage({super.key});

  @override
  _KubusPageState createState() => _KubusPageState();
}

class _KubusPageState extends State<KubusPage> {
  final _sisiController = TextEditingController();
  String _hasilKubus = '';

  void _hitungKubus() {
    final sisi = double.tryParse(_sisiController.text) ?? 0;

    final volume = sisi * sisi * sisi;
    final keliling = 12 * sisi;

    setState(() {
      _hasilKubus = 'Volume: $volume\nKeliling: $keliling';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Kubus')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _sisiController,
              decoration: InputDecoration(labelText: 'Panjang Sisi Kubus'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _hitungKubus, child: Text('Hitung')),
            SizedBox(height: 20),
            Text(_hasilKubus, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
