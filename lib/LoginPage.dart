import 'package:flutter/material.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String nama = '';
  String roles = '';
  String sekolah = '';
  String deskripsi = '';

  void _submit() {
  if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save(); // Panggil onSaved untuk menyimpan nilai

    // Jika validasi sukses, navigasi ke halaman Home dengan data pengguna
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Home(
          nama: nama,
          roles: roles,
          sekolah: sekolah,
          deskripsi: deskripsi,
        ),
      ),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/login.png', // Pastikan Anda memiliki gambar ini di assets
              height: 200,
            ),
            SizedBox(height: 40),
            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Please enter your details",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 40),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  // Input untuk Nama
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      nama = value!;
                    },
                  ),
                  SizedBox(height: 16),
                  // Input untuk Roles
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Roles',
                      prefixIcon: Icon(Icons.work),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your role';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      roles = value!;
                    },
                  ),
                  SizedBox(height: 16),
                  // Input untuk Sekolah
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Sekolah',
                      prefixIcon: Icon(Icons.school),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your school';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      sekolah = value!;
                    },
                  ),
                  SizedBox(height: 16),
                  // Input untuk Deskripsi
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Deskripsi',
                      prefixIcon: Icon(Icons.description),
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3, // Memungkinkan input multi-baris
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a description';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      deskripsi = value!;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50), // Full-width button
                    ),
                    child: Text('Login'),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          // Implementasi untuk mendaftar
                          print("Sign Up Pressed");
                        },
                        child: Text('Sign Up'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
