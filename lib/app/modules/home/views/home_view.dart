import 'package:carousel_slider/carousel_slider.dart';
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
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.ADD_PEMINJAMAN),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 17),
                    textStyle: TextStyle(fontSize: 23),
                    backgroundColor: Colors.black,
                  ),
                  child: Text('Kategori'),
                ),
              ),
              SizedBox(width: 10),
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
          

        ],
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 23,vertical: 10),
        child: ElevatedButton(
          onPressed: () => Get.toNamed(Routes.BOOK),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            textStyle: TextStyle(fontSize: 25),
            backgroundColor: Color(0xFFFF7A00),
          ),
          child: Text('Semua Buku'),
        ),
      ),

    );
  }
}

class ClickableImage extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClick;
  final double width;
  final double height;
  final double borderRadius;
  final Color borderColor;

  const ClickableImage({
    required this.imagePath,
    required this.onClick,
    this.width = 100,
    this.height = 100,
    this.borderRadius = 30,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor),
        ),
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),

    );
  }
}

