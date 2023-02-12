
import 'package:eyephoria_pranika_fyp/controller/authentication_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/cart_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/category_controller.dart';
import 'package:eyephoria_pranika_fyp/payments/khalti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalti/khalti.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Khalti.init(
    publicKey: 'test_public_key_781201cbfd7644f2923c26f52aaf6564',
  enabledDebugging: false
  );
  Builder: (context, navigatorKey){
    navigatorKey;
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ne', 'NP'),
      ];
      // LocalizationsDelegate: const [
      //   KhaltiLocalizations.delegate,
      // ];


      
  };
  

  
  Get.put(Authentication());
  Get.put(CategoryController());
  Get.put(CartController());
  runApp(const MaterialApp(

      home: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "My First Flutter Project",
          home: KhaltiApp())));
          debugShowCheckedModeBanner: false;
          
}
