import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'Page2.dart'; // Pastikan Page2.dart juga sudah ada di project Anda

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Halaman login sebagai halaman awal
    ));

class Home extends StatelessWidget {
  final String nama;
  final String roles;
  final String sekolah;
  final String deskripsi;

  const Home({
    Key? key,
    required this.nama,
    required this.roles,
    required this.sekolah,
    required this.deskripsi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100.0,
                          backgroundImage: AssetImage('images/profile.jpg'),
                        ),
                        Text(
                          "Nama: $nama",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          "Roles: $roles",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          "Sekolah: $sekolah",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          "Deskripsi: $deskripsi",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Page2(
                                  nama: nama,
                                  roles: roles,
                                  sekolah: sekolah,
                                  deskripsi: deskripsi,
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'See More',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Kembali ke halaman login dan menghapus semua halaman sebelumnya
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Text('Logout'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
