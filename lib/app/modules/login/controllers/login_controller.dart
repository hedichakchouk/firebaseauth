import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_auth/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';

import '../../home/views/home_view.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isSigning=false.obs;
  @override

  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  Future signInUser() async {

    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      )
          .then((value) {

             Get.off(()=>const HomeView(),binding: HomeBinding());
      });
    } catch (e) {
    print("some error $e");
    }
  }


}
