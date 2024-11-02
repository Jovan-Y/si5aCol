import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer' as developer;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title:const Text('data')),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // gambar
                Image.asset('images/images.jpeg', width: 400, height: 100,),
                // judul
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: const Text(
                    'Universitas MDP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Staatliches',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                // deskripsi
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    'Seiring dengan perkembangan jaman, dan demi mewujudkan lulusan yang bermutu, maka STMIK/AMIK MDP mengikuti pengujian sertifikasi ISO, dan pada tanggal 2 Maret 2004 berhasil mendapatkan sertifikat ISO 9001-2000 tentang manajemen dari SGS dengan No. AU04/2002. Di bidang akademik pada tanggal 28 Januari 2005, Program Studi Sistem Informasi dan Program Studi Teknik Informatika mendapat status “AKREDITASI” dari Badan Akreditasi Nasional Perguruan Tinggi (BAN PT) dengan surat No. 001/Ban-PT/Ak-VIII/S1/I/2005, selanjutnya pada tanggal 8 Juni 2005 menyusul Program Studi Teknik Komputer dan Program Studi Komputerisasi Akuntansi mendapatkan juga status “AKREDITASI” dari BAN PT dengan surat No.005 /Ban-PT/Ak-V/Dpl.III/VI/2005. Akhirnya pada tanggal 7 Juli 2005, Program Studi Manajemen Informatika juga mendapatkan status “AKREDITASI” dari BAN PT dengan surat No. 007/BAN-PT/Ak-V/Dpl-III/VII/2005. Sehingga saat ini semua Program Studi di STMIK/AMIK MDP telah mendapatkan Status “AKREDITASI”.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Oxygen'
                    ),
                  ),
                ),
                // list gambar horizontal
                SizedBox(
                  height: 200,
                  width: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // gambar ke 1
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 0, 4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.network('https://media.istockphoto.com/id/1336218931/id/vektor/ikon-otak-dan-kepala-manusia.jpg?s=612x612&w=0&k=20&c=MYTTMRaia-2hQcf-FgTS8gpHkuDANj8hP7B7K4xj8PI='),
                        ),
                        ),
                      // gambar ke 2
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 0, 4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.network('https://i.pinimg.com/736x/8b/a4/fe/8ba4fe98b5651c60e062d50443538ea5.jpg'),
                        ),
                      ),
                      // gambar ke 3
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 0, 4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.network('https://mdp.ac.id/mdp2020/wp-content/uploads/2021/03/gambar-2-1024x577.jpg'),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                // tombol lihat lokasi
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      // kode untuk menampilkan lokasi
                      const url = 
                          'https://www.google.com/maps/search/?api=1&query=Universitas+Multi+Data+Palembang';
                      final uri = Uri.parse(url);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      }else {
                        developer.log('Could not launch $url');
                      }
                    },
                    child: const Text('lihat lokasi'),
                  ),
                ),
              ],
              
            ),
          ),
        )
      ),
    );
  }
}
