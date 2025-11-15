import 'package:flutter/material.dart';
import 'soal1_grid_produk.dart';
import 'soal2_profil_mahasiswa.dart';
import 'soal3_daftar_kontak.dart';
import 'soal4_dashboard.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuis UI/UX Flutter'),
        centerTitle: true,
        elevation: 2,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildMenuCard(
            context,
            'Soal 1: Grid Produk',
            'GridView dengan daftar produk',
            Icons.shopping_bag,
            Colors.blue,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Soal1GridProduk()),
            ),
          ),
          _buildMenuCard(
            context,
            'Soal 2: Kartu Profil Mahasiswa',
            'Card profil dengan informasi lengkap',
            Icons.person,
            Colors.green,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Soal2ProfilMahasiswa()),
            ),
          ),
          _buildMenuCard(
            context,
            'Soal 3: Daftar Kontak',
            'ListTile dengan status online',
            Icons.contacts,
            Colors.orange,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Soal3DaftarKontak()),
            ),
          ),
          _buildMenuCard(
            context,
            'Soal 4: Dashboard Multi-widget',
            'Kombinasi GridView, Card & ListTile',
            Icons.dashboard,
            Colors.purple,
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Soal4Dashboard()),
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, String subtitle,
      IconData icon, Color color, VoidCallback onTap) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 32),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[400]),
            ],
          ),
        ),
      ),
    );
  }
}
