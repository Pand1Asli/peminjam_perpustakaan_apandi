import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${Get.parameters['judul']}'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(key: controller.formKey,child: Column(
            children: [
              TextFormField(
                controller: controller.tanggalpinjamController,
                decoration: InputDecoration(hintText: "Masukkan Tanggal Pinjam"),
                validator: (value){
                  if (value!.length < 2) {
                    return "tanggal pinjam tidak boleh kosong";
                  }
                  return null;
                },
              ),
              DateTimePicker(
                controller: controller.tanggalkembaliController,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Tanggal Kembali',
                dateMask: 'yyyy-MM-dd',
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
