import 'package:flutter/material.dart';
import '../widgets/student_profile_card.dart';

class Soal2ProfilMahasiswa extends StatelessWidget {
  const Soal2ProfilMahasiswa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soal 2: Profil Mahasiswa'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: StudentProfileCard(),
        ),
      ),
    );
  }
}
