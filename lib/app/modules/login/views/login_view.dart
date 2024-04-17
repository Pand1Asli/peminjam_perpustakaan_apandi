import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

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
                  SizedBox(height: 160),
                  Icon(
                    Icons.account_circle, // Ganti dengan ikon yang diinginkan
                    size: 130,
                    color: Colors.white,
                  ),
                  SizedBox(height: 40.0),
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
                  SizedBox(height: 15.0),
                  TextFormField(
                    controller: controller.passwordController,
                    obscureText: !controller.isPasswordVisible,
                    decoration: InputDecoration(
                      hintText: "Masukkan Password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          controller.togglePasswordVisibility();
                        },
                        child: Icon(
                          controller.isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 40),
                  Obx(() => controller.loading.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            controller.login();
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            textStyle: TextStyle(fontSize: 25),
                            backgroundColor: Color(0XFFFF7A00),
                          ),
                          child: Text("LOGIN",
                              style: TextStyle(color: Colors.white)))),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum Punya Akun? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Get.toNamed(Routes.REGISTER),
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
