import 'package:flutter/material.dart';
// 1. Tambahkan import untuk class AboutMe dari file Anda.
// Sesuaikan path jika file berada di lokasi lain (misalnya 'package:nama_app/about_me.dart')
import './about_me.dart'; 

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // Tambahkan const ke MaterialApp
      // 2. Koreksi nama class dari AboutME() menjadi AboutMe()
      home: AboutMe(), 
      debugShowCheckedModeBanner: false,
    );
  }
}
