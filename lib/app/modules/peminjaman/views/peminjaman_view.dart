import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/model/response_pinjam.dart';
import '../../../routes/app_pages.dart';
import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamanView'),
        centerTitle: true,
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>Get.toNamed(Routes.PEMINJAMAN),child: Icon(Icons.add),
        ),
        body: controller.obx((state) => ListView.separated(
            itemCount: state!.length,
            itemBuilder: (context, index){
              DataPinjam dataPinjam = state[index];
              return ListTile(
                title: Text("${dataPinjam.book?.judul}"),
                subtitle: Text(
                    "Tanggal Pinjam: ${dataPinjam.tanggalPinjam}\n Tanggal Kembali: ${dataPinjam.tanggalKembali}\n ${dataPinjam.status}"),
              );
            },
            separatorBuilder: (context, index){
              return Divider();
            }
        ))
    );
  }
}
