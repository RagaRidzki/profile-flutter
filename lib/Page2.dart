import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String nama;
  final String roles;
  final String sekolah;
  final String deskripsi;

  const Page2({
    Key? key,
    required this.nama,
    required this.roles,
    required this.sekolah,
    required this.deskripsi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/profile.jpg'),
                backgroundColor: Colors.grey.shade200,
              ),
              const SizedBox(height: 20),
              Text(
                '$nama',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '$sekolah - $roles',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              // About Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ListTile(
                  title: const Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                      'Saya adalah seorang siswa di SMK Wikrama Bogor dengan mengambil jurusan Pengembangan Perangkat Lunak Dan Gim (PPLG), saya berfokus pada bagian Frontend Developer.'),
                ),
              ),
              const SizedBox(height: 20),
              // History Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ListTile(
                  title: const Text(
                    'History',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                      'Saya memulai pendidikan dari SD di SDN Tajur 1, kemudian melanjutkan ke SMPN 3 Bogor, dan saat ini sedang menempuh pendidikan di SMK Wikrama Bogor. Selama di Wikrama, saya telah mengerjakan berbagai proyek dan membangun portofolio.'),
                ),
              ),
              const SizedBox(height: 20),
              // Skills Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ListTile(
                  title: const Text(
                    'Skills',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('HTML'),
                        SizedBox(height: 4),
                        Text('CSS'),
                        SizedBox(height: 4),
                        Text('JavaScript'),
                        SizedBox(height: 4),
                        Text('PHP'),
                        SizedBox(height: 4),
                        Text('MySQL'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
