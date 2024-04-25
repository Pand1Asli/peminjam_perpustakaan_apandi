import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/model/response_book.dart';
import '../../../routes/app_pages.dart';
import '../controllers/book_controller.dart';

class BookView extends GetView<BookController> {
  const BookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Get.toNamed(Routes.HOME),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Text(
                    'Semua Buku', // Add your text here
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Expanded(
            child: controller.obx(
                  (state) => ListView.separated(
                  itemCount: state!.length,
                  itemBuilder: (context, index) {
                    DataBook dataBook = state[index];
                    return ListTile(
                      title: Text(
                        "${dataBook.judul}",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "Penulis ${dataBook.penulis}\n "
                            "${dataBook.penerbit} - ${dataBook.tahunTerbit}",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () => Get.toNamed(
                            Routes.ADD_PEMINJAMAN,
                            parameters: {
                              'id': (dataBook.id ?? 0).toString(),
                              'judul': dataBook.judul ?? '-'
                            }
                        ),
                        child: Text(
                          "Pinjam",
                          style: TextStyle(color: Colors.black), // Set the text color to black
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // Set the button background color to white
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.white,
                    );
                  }
              ),
              onLoading: CupertinoActivityIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}