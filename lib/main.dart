import 'package:flutter/material.dart';
import 'trapesium.dart';
import 'kubus.dart';
import 'hari.dart';
import 'data_diri.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Matematika',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Matematika'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.pink[50], // Background color yang lebih lembut
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListView(
          children: [
            _buildMenuItem(
              icon: Icons.calculate,
              title: 'Menu Trapesium',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrapesiumPage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.archive,
              title: 'Menu Kubus',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KubusPage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.calendar_today,
              title: 'Penghitung Hari',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HariPage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.person,
              title: 'Menu Data Diri',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataDiriPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required Function() onTap,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: 12),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: onTap,
      ),
    );
  }
}
