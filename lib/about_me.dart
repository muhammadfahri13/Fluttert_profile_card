import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  // Placeholder image URL for demonstration (assets are not available here)
  static const String placeholderImageUrl = "https://placehold.co/100x100/78909c/ffffff?text=HR";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Me', 
          style: TextStyle(fontWeight: FontWeight.bold)
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      // Konten sudah dibungkus dengan SingleChildScrollView untuk memastikan dapat di-scroll
      body: SingleChildScrollView(
        child: Padding(
          // Padding membungkus seluruh body untuk memberikan jarak di kiri dan kanan
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // CircleAvatar untuk Foto Profil
              const Center(
                child: CircleAvatar(
                  radius: 55, // Radius sedikit lebih besar dari width/height 100
                  // Menggunakan NetworkImage dengan placeholder URL
                  backgroundImage: NetworkImage(placeholderImageUrl),
                  backgroundColor: Colors.grey, // Warna fallback
                ),
              ),

              // Nama (di tengah)
              const Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 8.0),
                child: Text(
                  'Hafiz Rizky'.toUpperCase(), // <-- Nama sudah diubah di sini
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'poppins',
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Deskripsi
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: 14, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 30),

              // Card / Container untuk Proyek (Menggunakan styling terbaik dari file pertama)
              Container(
                padding: const EdgeInsets.all(16), // Padding di dalam Container
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black12, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amberAccent.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                // Row untuk Ikon dan Detail Proyek
                child: Row(
                  children: <Widget>[
                    // Container Ikon
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.green.shade600, // Warna untuk ikon Android
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(Icons.android, color: Colors.white, size: 40),
                    ),

                    const SizedBox(width: 15), // Jarak antara ikon dan teks
                    // Kolom Detail Proyek
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Android Project\'s',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "10 APLIKASI",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // --- Schedule Section ---
              // Title Schedule
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Schedule'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins',
                    fontSize: 18,
                    letterSpacing: 2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Content Schedule (Diperbaiki menggunakan Expanded untuk responsivitas)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Card 1
                  Expanded( // Memastikan Card mengambil ruang yang tersedia
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min, // Membuat kolom se-kecil mungkin
                          children: <Widget>[
                            Text(
                              'belajar',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Colors.blueAccent,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '07.30 - 14.30',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Jarak antar Card

                  // Card 2
                  Expanded( // Memastikan Card mengambil ruang yang tersedia
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'istirahat',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Colors.orangeAccent,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '14.30 - 17.00',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // --- End Schedule Section ---

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
