import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Kategori',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              _buildCategoryItem(Icons.school, 'Akademik', Colors.blue),
              _buildCategoryItem(Icons.calendar_today, 'Jadwal', Colors.green),
              _buildCategoryItem(Icons.book, 'Materi', Colors.orange),
              _buildCategoryItem(Icons.assignment, 'Tugas', Colors.red),
              _buildCategoryItem(Icons.people, 'Komunitas', Colors.purple),
              _buildCategoryItem(Icons.notifications, 'Notifikasi', Colors.teal),
              _buildCategoryItem(Icons.settings, 'Pengaturan', Colors.grey),
              _buildCategoryItem(Icons.help, 'Bantuan', Colors.indigo),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryItem(IconData icon, String label, Color color) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 6),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 11),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
