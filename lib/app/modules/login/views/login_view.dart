import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "Email"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller.passwordController,
              decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "Password"),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: InkWell(
                onTap: () {
                   controller.signInUser();
                },
                child: Container(
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
           controller. isSigning.value == true
                ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Please wait..."),
                SizedBox(
                  width: 10,
                ),
                CircularProgressIndicator()
              ],
            )
                : Container(),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("New to the application?"),
                SizedBox(width: 10,),
                InkWell(

                  child: Text("Sign Up", style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),),
                )
              ],
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: () {

            }, child: const Text("Sign In with Google"))
          ]),
        ),
      ),
    );
  }
}
