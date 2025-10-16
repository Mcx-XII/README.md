import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/sampul.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/kabul.jpg'),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Teknik Informatika',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                    Text(
                      'Fakultas Vokasi',
                      style: TextStyle(
                        color: Color.fromARGB(179, 255, 255, 255),
                        fontSize: 16,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    buildInfoCard(Icons.person, 'Nama', 'Kabul Manik'),
                    const SizedBox(height: 10),
                    buildInfoCard(Icons.tag, 'Nim', '241712023'),
                    const SizedBox(height: 10),
                    buildInfoCard(Icons.group, 'Kom', 'A2'),
                    const SizedBox(height: 10),
                    buildInfoCard(Icons.email, 'Email', 'mcxm81@gmail.com'),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            74,
                            74,
                            74,
                          ),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildInfoCard(IconData icon, String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 74, 74, 74),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.black),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.black87, fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 18),
        ],
      ),
    );
  }
}
