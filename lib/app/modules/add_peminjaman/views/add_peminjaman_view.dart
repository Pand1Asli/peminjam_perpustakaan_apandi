import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.toNamed(Routes.BOOK),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Text('Buku ''${Get.parameters['judul']}',
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
        centerTitle: true,
      ),
      body: Center(
          child: Form(key: controller.formKey,child: Column(
            children: [
              DateTimePicker(
                controller: controller.tanggalpinjamController,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: ('Tanggal Pinjam'),
                dateMask: 'yyyy-MM-dd',
                style: TextStyle(color: Colors.white),
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
              ),
              DateTimePicker(
                controller: controller.tanggalkembaliController,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Tanggal Kembali',
                dateMask: 'yyyy-MM-dd',
                style: TextStyle(color: Colors.white),
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
              ),
              Obx(() => controller.loading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                  onPressed: () {
                    controller.pinjam();
                  },
                  child: Text("PINJAM")))
            ],
          ))),
    );
  }
}
