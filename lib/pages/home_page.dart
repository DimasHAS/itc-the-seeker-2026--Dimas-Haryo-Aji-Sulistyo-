import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/homepagepic.png",
              fit: BoxFit.cover,
            ),
          ),

          // overlay gelap agar teks mudah dibaca
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.2),
                  Colors.black.withValues(alpha: 0.7),
                ],
              ),
            ),
          ),

          // konten teks
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "INFORMATION TECHNOLOGY CLUB",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  Container(
                    height: 5,
                    width: 60,
                    color: Colors.greenAccent,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Information Technology Club (ITC) merupakan salah satu kelompok studi yang ada di Informatika UPN yang bertujuan sebagai rumah bagi para tech enthusiast untuk berdiskusi dan mengembangkan diri bersama.",
                    style: TextStyle(
                      color: Color.fromARGB(210, 255, 255, 255),
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  
                  // Statistik Ringkas
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStat("6", "Divisi"),
                      _buildStat("20", "Anggota"),
                      _buildStat("2026/2027", "Periode"),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget kecil untuk statistik di Home
  Widget _buildStat(String value, String label) {
    return Column(
      children: [
        Text(value, style: const TextStyle(color: Colors.greenAccent, fontSize: 24, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
