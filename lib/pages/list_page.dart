import 'package:flutter/material.dart';
import '../pengurus.dart';
import 'detail_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Struktur Organisasi"),
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withValues(alpha: 0.6),
              Colors.black.withValues(alpha: 0.8),
            ],
          ),
        ),
        child: ListView(
          children: [
            // Section Favorite
            _buildFavoriteSection(context),
            
            // Section Divisi
            _buildDivisionSection(context, "Ketua dan Wakil Ketua", 
              _getPersonByDivision("Leader of ITC")),
            _buildDivisionSection(context, "Sekretaris dan Bendahara", 
              _getPersonByDivision("Sekben")),
            _buildDivisionSection(context, "Media dan Informasi", 
              _getPersonByDivision("Medinfo")),
            _buildDivisionSection(context, "Divisi UI/UX", 
              _getPersonByDivision("UI/UX Designer")),
            _buildDivisionSection(context, "Divisi Web Development", 
              _getPersonByDivision("Web Development")),
            _buildDivisionSection(context, "Divisi Competitive Programming", 
              _getPersonByDivision("Competitive Programming")),
            _buildDivisionSection(context, "Divisi Mobile Development", 
              _getPersonByDivision("Mobile Development")),
            _buildDivisionSection(context, "Divisi Machine Learning", 
              _getPersonByDivision("Machine Learning")),
            _buildDivisionSection(context, "Divisi Project Manager", 
              _getPersonByDivision("Project Manager")),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk mendapatkan pengurus berdasarkan divisi
  List<Pengurus> _getPersonByDivision(String division) {
    return listPengurus.where((person) => person.division == division).toList();
  }

  // Fungsi untuk mendapatkan pengurus favorite
  List<Pengurus> _getFavorites() {
    return listPengurus.where((person) => person.isFavorite).toList();
  }

  // Widget untuk section Favorite
  Widget _buildFavoriteSection(BuildContext context) {
    final favorites = _getFavorites();
    if (favorites.isEmpty) {
      return const SizedBox.shrink();
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Favorite dengan heart icons
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          color: Colors.red[900],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.white, size: 24),
              const SizedBox(width: 12),
              const Text(
                "Favorite",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(width: 12),
              Icon(Icons.favorite, color: Colors.white, size: 24),
            ],
          ),
        ),
        // Daftar orang favorite
        ...favorites.map((person) => _buildPersonCard(context, person)),
        const SizedBox(height: 8),
      ],
    );
  }


  // Widget untuk membuat section divisi
  Widget _buildDivisionSection(
    BuildContext context, 
    String title, 
    List<Pengurus> people,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header divisi
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          color: Colors.green[900],
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
        // Daftar pengurus dalam divisi
        ...people.map((person) => _buildPersonCard(context, person)),
        const SizedBox(height: 8),
      ],
    );
  }

  // Widget untuk kartu individual
  Widget _buildPersonCard(BuildContext context, Pengurus person) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      color: const Color.fromARGB(230, 40, 40, 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(person.image),
        ),
        title: Text(
          person.name, 
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          person.position,
          style: const TextStyle(color: Colors.grey),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.greenAccent),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => DetailPage(data: person),
          )).then((_) {
            // Rebuild list page ketika kembali dari detail page
            setState(() {});
          });
        },
      ),
    );
  }
}
