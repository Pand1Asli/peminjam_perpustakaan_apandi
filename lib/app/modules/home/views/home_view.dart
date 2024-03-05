import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false, // Menonaktifkan ikon kembali secara otomatis
            title: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Text(
                    'PEA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, // Menjadikan teks tebal (bold)
                    ),
                  ),
                  Text(
                    ' - PerpusAsli',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Fungsi yang akan dijalankan ketika tombol pencarian ditekan
                  // Anda dapat menambahkan logika untuk pencarian di sini
                },
              ),
            ],
          ),
          Image.asset(
            'assets/Background_beranda.jpg', // Ubah dengan path gambar Anda
            fit: BoxFit.cover, // Sesuaikan dengan kebutuhan
            height: 125, // Sesuaikan dengan kebutuhan
            width: double.infinity, // Memenuhi lebar layar
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Fungsi yang akan dijalankan ketika tombol pertama ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 17),
                      textStyle: TextStyle(fontSize: 23),
                      backgroundColor: Colors.black,
                    ),
                    child: Text('Kategori'),
                  ),
                ),
                SizedBox(width: 10), // Spacer antar tombol
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.PEMINJAMAN),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 17),
                      textStyle: TextStyle(fontSize: 23),
                      backgroundColor: Colors.black,
                    ),
                    child: Text('Koleksi'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
