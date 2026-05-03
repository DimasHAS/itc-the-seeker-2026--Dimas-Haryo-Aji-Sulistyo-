import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pengurus.dart';

class DetailPage extends StatefulWidget {
  final Pengurus data;
  const DetailPage({super.key, required this.data});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // Fungsi untuk membuka WhatsApp
  Future<void> _openWhatsApp() async {
    final whatsappUrl = "https://wa.me/6281329075483";
    try {
      await launchUrl(
        Uri.parse(whatsappUrl),
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Tidak dapat membuka WhatsApp")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Pengurus"),
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(  
              widget.data.image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded( 
                        child: Text(
                          widget.data.name, 
                          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                      
                      IconButton(
                        icon: Icon(
                          widget.data.isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            widget.data.isFavorite = !widget.data.isFavorite;
                          });
                        },
                      )
                    ],
                  ),
                  Text(widget.data.position, style: const TextStyle(fontSize: 18, color: Colors.blue)),
                  const SizedBox(height: 10),
                  Text("Divisi: ${widget.data.division}", style: const TextStyle(fontStyle: FontStyle.italic)),
                  const Divider(height: 30),
                  const Text("Tugas & Tanggung Jawab:", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text(widget.data.description),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openWhatsApp,
        backgroundColor: Colors.green,
        child: const Icon(Icons.message, color: Colors.white, size: 28),
      ),
    );
  }
}
