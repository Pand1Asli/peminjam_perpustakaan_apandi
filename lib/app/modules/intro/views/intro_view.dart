import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
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
                    height: constraints.maxWidth < 600 ? 200 : 300,
                    width: constraints.maxWidth < 600 ? 200 : 300,
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth < 600 ? 40 : 60,
                          vertical: constraints.maxWidth < 600 ? 22 : 60),
                      textStyle: TextStyle(
                          fontSize: constraints.maxWidth < 600 ? 27 : 27,
                          fontWeight: FontWeight.bold),
                      backgroundColor: Color(0XFFFF7A00),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.white, // Ubah warna teks menjadi putih
                    ),
                    child: Text('NEXT'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}