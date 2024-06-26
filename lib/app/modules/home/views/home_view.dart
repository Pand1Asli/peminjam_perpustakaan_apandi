import 'package:flutter/cupertino.dart';
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
      body: ListView(
        children: [
          AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                    IconButton(
                      icon: Icon(Icons.person,),
                      onPressed: () {
                      },
                    ),
                  SizedBox(width: 10),
                  Text(
                    'PEA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
          ),
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/Background_beranda.jpg',
                fit: BoxFit.cover,
                height: 125,
                width: double.infinity,
              ),
              Positioned(
                top: 37,
                right: 0,
                child: Transform.translate(
                  offset: Offset(-30, 0),
                  child: Text(
                    'Selamat Datang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 68,
                right: 0,
                child: Transform.translate(
                  offset: Offset(-30, 0),
                  child: Text(
                    'PerpusAsli - Dijamin Keasliannya',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 17),
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'Kategori',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white, // Set the text color to white
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.PEMINJAMAN),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 17),
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'Koleksi',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white, // Set the text color to white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
        child: ElevatedButton(
          onPressed: () => Get.toNamed(Routes.BOOK),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            textStyle: TextStyle(fontSize: 25, color: Colors.white), // Tambahkan warna putih di sini
            backgroundColor: Color(0xFFFF7A00),
          ),
          child: Text(
            'Semua Buku',
            style: TextStyle(color: Colors.white), // Tambahkan warna putih di sini juga
          ),
        ),
      ),
    );
  }
}
