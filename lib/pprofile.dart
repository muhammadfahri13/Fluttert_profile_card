import 'package:flutter/material.dart';

class Pprofile extends StatelessWidget {
  const Pprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'My profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    spreadRadius: 5.0,
                    blurRadius: 7.0,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              height: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'NAME',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Muhammad fahri',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 20), // Tambahkan sedikit jarak di sini
                  Row(
                    // === INI PERUBAHAN UTAMA ===
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ===========================
                    children: <Widget>[
                      // ... (kolom Address)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0), // Padding di sini diperbesar agar tulisan terlihat
                                child: Text(
                                  'Address',
                                  style: TextStyle(color: Colors.white), // Tambahkan warna teks agar terlihat di background merah
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ... (kolom Tempat Tanggal lahir)
                      Padding(
                        padding: const EdgeInsets.all(8.0), // Tambahkan padding untuk jarak
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.all(8.0), // Padding diperbesar
                              child: Text(
                                'Tempat Tanggal lahir',
                                style: TextStyle(color: Colors.white), // Tambahkan warna teks agar terlihat
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}