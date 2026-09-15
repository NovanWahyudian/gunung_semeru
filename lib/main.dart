import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gunung Semeru"),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // FOTO
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "asset/semeru.jpg",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 15),

              // JUDUL
              Text(
                "Gunung Semeru",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              // PENJELASAN
              Text(
                "Gunung Semeru adalah gunung tertinggi di Pulau Jawa dengan ketinggian sekitar 3.676"
                "meter di atas permukaan laut (mdpl). Gunung ini berada di kawasan Taman Nasional"
                "Bromo Tengger Semeru, Jawa Timur.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              Spacer(),

              // CONTACT DAN LOKASI
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BAGIAN CONTACT
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.phone, size: 16),
                            SizedBox(width: 5),
                            Text(
                              "Contact",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          "+62 812-1771-2382",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),

                  // JARAK ANTAR BAGIAN
                  SizedBox(width: 15),

                  // BAGIAN LOKASI
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, size: 16),
                            SizedBox(width: 5),
                            Text(
                              "Lokasi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Kabupaten Malang,\nJawa Timur",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
