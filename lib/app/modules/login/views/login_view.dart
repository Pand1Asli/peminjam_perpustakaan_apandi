import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Center(
          child: Form(key: controller.formKey,
              child: Column(
            children: [
              Image.asset(
                'assets/icon.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 50.0),
              Text(
                "LOGIN", // Tambahkan judul di sini
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0, // Sesuaikan ukuran font sesuai kebutuhan Anda
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
              TextFormField(
                controller: controller.usernameController,
                decoration: InputDecoration(hintText: "Masukkan Username",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value){
                  if (value!.length < 2) {
                    return "username tidak boleh kosong";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.0),
              TextFormField(
                controller: controller.passwordController,
                decoration: InputDecoration(hintText: "Masukkan Password",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value){
                  if (value!.length < 2) {
                    return "password tidak boleh kosong";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.0),
              Obx(() => controller.loading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                  onPressed: () {
                    controller.login();
                  },
                  child: Text("Login"))),
              ElevatedButton(onPressed: ()=>Get.toNamed(Routes.REGISTER),
                  child: Text("Register"))
            ],
          ))),
    );
  }
}
