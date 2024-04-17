import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    controller: controller.namaController,
                    decoration: InputDecoration(
                      hintText: "Masukkan Nama",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "nama tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: controller.usernameController,
                    decoration: InputDecoration(
                      hintText: "Masukkan Username",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "username tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: controller.telpController,
                    decoration: InputDecoration(
                      hintText: "Masukkan Telepon",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "telepon tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: controller.alamatController,
                    decoration: InputDecoration(
                      hintText: "Masukkan Alamat",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "alamat tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                      hintText: "Masukkan Password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "password tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  Obx(() => controller.loading.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                      onPressed: () {
                        controller.register();
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                        textStyle: TextStyle(fontSize: 25),
                        backgroundColor: Color(0XFFFF7A00),
                      ),
                      child: Text("SIGN UP", style: TextStyle(color: Colors.white)))),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah Punya Akun? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Get.toNamed(Routes.LOGIN),
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Spasi di bawah teks "Sudah Punya Akun? Masuk"
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}