import 'package:flutter/material.dart';

class Pprofilecard extends StatelessWidget {
  const Pprofilecard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Muhammad Fahri')),

        body: Column(
          children: <Widget>[
            SizedBox(
              child: Container(
                width: 200,
                child: Text(
                  'NAMA',
                  style: const TextStyle( // Tambahkan const karena style tidak berubah
                    color:Colors.amber,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold, 
                    backgroundColor: Colors.redAccent, 
                    fontFamily: 'Poppins',
                  ),
                ), 
              ),
            ), 
            const Text('MUHAMMAD FAHRI',
            style: TextStyle(
              backgroundColor: Color.fromRGBO(200, 150, 150, 1),
            ),),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
