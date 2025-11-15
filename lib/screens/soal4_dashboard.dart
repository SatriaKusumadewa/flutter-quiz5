import 'package:flutter/material.dart';
import '../widgets/category_grid.dart';
import '../widgets/info_card.dart';
import '../widgets/activity_list.dart';

class Soal4Dashboard extends StatelessWidget {
  const Soal4Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soal 4: Dashboard'),
      ),
      body: Column(
        children: [
          // Bagian GridView Kategori
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(12),
              child: const CategoryGrid(),
            ),
          ),

          // Bagian Card Informasi
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: const InfoCard(),
            ),
          ),

          // Bagian ListTile Aktivitas
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(12),
              child: const ActivityList(),
            ),
          ),
        ],
      ),
    );
  }
}