import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg_intro.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/LogoPerpusAsli.png',
                height: 300,
                width: 300,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => Get.toNamed(Routes.HOME),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(fontSize: 40),
                  backgroundColor: Color(0XFFFF7A00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Sesuaikan nilai border radius sesuai keinginan
                  ),
                ),
                child: Text('NEXT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
