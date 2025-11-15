import 'package:flutter/material.dart';
import '../models/contact_model.dart';
import '../widgets/contact_list_tile.dart';

class Soal3DaftarKontak extends StatefulWidget {
  const Soal3DaftarKontak({Key? key}) : super(key: key);

  @override
  State<Soal3DaftarKontak> createState() => _Soal3DaftarKontakState();
}

class _Soal3DaftarKontakState extends State<Soal3DaftarKontak> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final contacts = ContactModel.getSampleContacts();

    return Theme(
      data: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Soal 3: Daftar Kontak'),
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
          ],
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ContactListTile(
              contact: contacts[index],
              isDarkMode: isDarkMode,
            );
          },
        ),
      ),
    );
  }
}