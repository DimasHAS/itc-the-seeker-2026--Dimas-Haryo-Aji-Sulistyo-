class Pengurus {
  final String name;
  final String position;
  final String division;
  final String description;
  final String image;
  bool isFavorite;

  Pengurus({
    required this.name,
    required this.position,
    required this.division,
    required this.description,
    required this.image,
    this.isFavorite = false,
  });
}

List<Pengurus> listPengurus = [
  Pengurus(
    name: "Grace Rianty Butar Butar",
    position: "Ketua Umum",
    division: "Leader of ITC",
    description: "Bertanggung jawab atas seluruh visi dan misi IT Club tahun ini.",
    image: "assets/images/Screenshot 2026-05-03 151716.png",
  ),
  Pengurus(
    name: "Dzaki Ghatfaan Abhipraya",
    position: "Wakil Ketua",
    division: "Leader of ITC",
    description: "Bertanggung jawab atas seluruh visi dan misi IT Club tahun ini.",
    image: "assets/images/Screenshot 2026-05-03 151727.png",
  ),
  Pengurus(
    name: "Nayla Saskia Zallianti",
    position: "Sekretaris",
    division: "Sekben",
    description: "Bertanggung jawab atas administrasi, dan persuratan IT Club.",
    image: "assets/images/Screenshot 2026-05-03 153527.png",
  ),
  Pengurus(
    name: "Dewi Rahmawati",
    position: "Bendahara",
    division: "Sekben",
    description: "Bertanggung jawab atas pengelolaan dana dan keuangan IT Club.",
    image: "assets/images/Screenshot 2026-05-03 153532.png",
  ),
  Pengurus(
    name: "Muhammad Rafli Wibowo",
    position: "Medinfo",
    division: "Medinfo",
    description: "Bertanggung jawab atas dokumentasi kegiatan dan konten sosial media.",
    image: "assets/images/Screenshot 2026-05-03 153955.png",
  ),
  Pengurus(
    name: "Satya Dio Putranto",
    position: "Medinfo",
    division: "Medinfo",
    description: "Bertanggung jawab atas dokumentasi kegiatan dan konten sosial media.",
    image: "assets/images/Screenshot 2026-05-03 154000.png",
  ),
  Pengurus(
    name: "Wilda Nafi’an",
    position: "Medinfo",
    division: "Medinfo",
    description: "Bertanggung jawab atas dokumentasi kegiatan dan konten sosial media.",
    image: "assets/images/Screenshot 2026-05-03 154003.png",
  ),
  Pengurus(
    name: "Muhammad Ruhul Jadid",
    position: "Kadiv UI/UX Designer",
    division: "UI/UX Designer",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi UI/UX Designer",
    image: "assets/images/Screenshot 2026-05-03 174832.png",
  ),
  Pengurus(
    name: "Gita Ristya",
    position: "Wakadiv UI/UX Designer",
    division: "UI/UX Designer",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi UI/UX Designer",
    image: "assets/images/Screenshot 2026-05-03 174837.png",
  ),
  Pengurus(
    name: "Gradiva Arya Wicaksana",
    position: "Kadiv Web Development",
    division: "Web Development",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Web Development",
    image: "assets/images/Screenshot 2026-05-03 175449.png",
  ),
  Pengurus(
    name: "Farhannivta Ramadhana",
    position: "Wakadiv Web Development",
    division: "Web Development",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Web Development",
    image: "assets/images/Screenshot 2026-05-03 175454.png",
  ),
  Pengurus(
    name: "Marvel Valensiano",
    position: "Wakadiv Web Development",
    division: "Web Development",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Web Development",
    image: "assets/images/Screenshot 2026-05-03 175458.png",
  ),
  Pengurus(
    name: "Mochamad Rizal Ardiansyah Sucipno",
    position: "Kadiv Competitive Programming",
    division: "Competitive Programming",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Competitive Programming",
    image: "assets/images/Screenshot 2026-05-03 180239.png",
  ),
  Pengurus(
    name: "Filipus Satrio Dewaki Tyasing Suryo",
    position: "Wakadiv Competitive Programming",
    division: "Competitive Programming",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Competitive Programming",
    image: "assets/images/Screenshot 2026-05-03 180243.png",
  ),
  Pengurus(
    name: "Bintoro",
    position: "Kadiv Mobile Development",
    division: "Mobile Development",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Mobile Development",
    image: "assets/images/Screenshot 2026-05-03 180528.png",
  ),
  Pengurus(
    name: "Ikhsan Fillah Hidayat",
    position: "Wakadiv Mobile Development",
    division: "Mobile Development",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Mobile Development",
    image: "assets/images/Screenshot 2026-05-03 180516.png",
  ),
  Pengurus(
    name: "Bintang Ramadhan",
    position: "Kadiv Machine Learning",
    division: "Machine Learning",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Machine Learning",
    image: "assets/images/Screenshot 2026-05-03 180806.png",
  ),
  Pengurus(
    name: "Muhammad Dimas Setiaji",
    position: "Wakadiv Machine Learning",
    division: "Machine Learning",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Machine Learning",
    image: "assets/images/Screenshot 2026-05-03 180810.png",
  ),
  Pengurus(
    name: "Kurniasari Salasa",
    position: "Kadiv Project Manager",
    division: "Project Manager",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Project Manager",
    image: "assets/images/Screenshot 2026-05-03 181041.png",
  ),
  Pengurus(
    name: "Fahri Hidayatullah",
    position: "Wakadiv Project Manager",
    division: "Project Manager",
    description: "Bertanggung jawab atas pengelolaan dan pengembangan divisi Project Manager",
    image: "assets/images/Screenshot 2026-05-03 181045.png",
  ),
];