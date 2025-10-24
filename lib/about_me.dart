import 'package:flutter/material.dart';

class AboutME extends StatelessWidget {
  const AboutME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About me', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        // Padding membungkus seluruh body untuk memberikan jarak di kiri dan kanan
        child: Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 20.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Nama (di tengah)
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 16.0), 
                child: Text(
                  'Muhammad Fahri'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 22, 
                    fontWeight: FontWeight.w900,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center, 
                ),
              ),

              // Deskripsi
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: 14, height: 1.5),
                textAlign: TextAlign.justify,
              ),

              SizedBox(height: 30),

              // Card / Container untuk Proyek (Memperbaiki BoxShadow dan penempatan Row)
              Container(
                padding: EdgeInsets.all(12), // Padding di dalam Container
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                  boxShadow: [
                    // Perbaikan BoxShadow sintaks: 
                    BoxShadow(
                      color: Colors.amberAccent.withOpacity(0.5), // Menggunakan Colors.amberAccent
                      blurRadius: 8, 
                      offset: Offset(0, 4), // Bayangan ke bawah
                    )
                  ],
                ),
                // Row untuk Ikon dan Detail Proyek
                child: Row(
                  children: <Widget>[
                    // Container Ikon
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.green, // Warna untuk ikon Android
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon( 
                        Icons.android,
                        color: Colors.white, 
                        size: 50,
                      ),
                    ),
                    
                    SizedBox(width: 15), // Jarak antara ikon dan teks

                    // Kolom Detail Proyek
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Android Project\'s', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "10 APLIKASI",
                          style: TextStyle(
                            color: Colors.grey[600]
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text('Experience'),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
