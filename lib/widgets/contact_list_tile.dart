import 'package:flutter/material.dart';
import '../models/contact_model.dart';

class ContactListTile extends StatelessWidget {
  final ContactModel contact;
  final bool isDarkMode;

  const ContactListTile({
    Key? key,
    required this.contact,
    required this.isDarkMode,
  }) : super(key: key);

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Online':
        return Colors.green;
      case 'Offline':
        return Colors.grey;
      case 'Away':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        leading: Stack(
          children: [
            const CircleAvatar(
              radius: 28,
              child: Icon(Icons.person, size: 32),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: _getStatusColor(contact.status),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isDarkMode ? Colors.black : Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          contact.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(contact.phone),
            const SizedBox(height: 4),
            Text(
              contact.status,
              style: TextStyle(
                color: _getStatusColor(contact.status),
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.phone, color: Colors.green),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Panggilan'),
                content: Text(
                  'Memanggil ${contact.name}...\n${contact.phone}',
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Tutup'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
