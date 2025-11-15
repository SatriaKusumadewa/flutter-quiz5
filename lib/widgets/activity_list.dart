import 'package:flutter/material.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Aktivitas Terakhir',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              _buildActivityTile(
                Icons.upload_file,
                'Upload Tugas Pemrograman Mobile',
                '2 jam yang lalu',
                Colors.green,
              ),
              _buildActivityTile(
                Icons.check_circle,
                'Menyelesaikan Kuis UI/UX',
                '5 jam yang lalu',
                Colors.blue,
              ),
              _buildActivityTile(
                Icons.comment,
                'Komentar di Forum Diskusi',
                '1 hari yang lalu',
                Colors.orange,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActivityTile(
      IconData icon, String title, String time, Color iconColor) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconColor.withOpacity(0.2),
          child: Icon(icon, color: iconColor),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(time, style: const TextStyle(fontSize: 12)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14),
      ),
    );
  }
}