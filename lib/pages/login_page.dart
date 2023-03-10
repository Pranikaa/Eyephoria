import 'package:eyephoria_pranika_fyp/components/my_button.dart';
import 'package:eyephoria_pranika_fyp/components/my_field.dart';
import 'package:eyephoria_pranika_fyp/controller/authentication_controller.dart';
import 'package:eyephoria_pranika_fyp/pages/home_page.dart';
import 'package:eyephoria_pranika_fyp/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final authentication = Get.find<Authentication>();

  // final confirmPasswordController = TextEditingController();
  // final usernameController = TextEditingController();
  // final nameController = TextEditingController();
  // final phoneController = TextEditingController();

  // final authentication = Get.put(Authentication());
  // final AuthService authService = AuthService();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   checkifAUthenticated();
  // }

  // checkifAUthenticated() async {
  //   var token = await authService.getToken();
  //   if (token != null) {
  //     Get.offAll(const HomePage());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 300,
                    width: 300,
                  ),
                  const Text("Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  MyField(
                    controller: emailController,
                    prefixIcon: const Icon(Icons.email_outlined),
                    myValidator: (value) {
                      if (!value.toString().contains("@")) {
                        return "Email is not valid";
                      }
                      return null;
                    },
                  ),
                  MyField(
                    text: "Password",
                    obscureText: true,
                    controller: passwordController,
                    prefixIcon: const Icon(Icons.key_outlined),
                    myValidator: (value) {
                      return null;
                    },
                  ),
                  MyButton(onTap: () {
                    var isFormValid = formKey.currentState!.validate();
                    if (isFormValid) {
                      var data = {
                        "email": emailController.text,
                        "password": passwordController.text,
                      };
                      authentication.login(data);
                      //Get.to(const HomePage());
                    }
                  }, backgroundColor: const [],),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Forgot Password?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Don't have an account?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SignInPage());
                    },
                    child: const Text("Register",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
