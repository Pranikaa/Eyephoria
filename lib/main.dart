import 'package:eyephoria_pranika_fyp/controller/authentication_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/cart_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/category_controller.dart';
import 'package:eyephoria_pranika_fyp/pages/home_page.dart';
import 'package:eyephoria_pranika_fyp/pages/login_page.dart';
import 'package:eyephoria_pranika_fyp/payments/khalti.dart';
import 'package:eyephoria_pranika_fyp/payments/khalti_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalti/khalti.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
//   return KhaltiScope(
//   publicKey: 'test_public_key_781201cbfd7644f2923c26f52aaf6564',
//   builder: (context, navigatorKey) {
//     return MaterialApp(
//       navigatorKey: navigatorKey,
//       supportedLocales: const [
//         Locale('en', 'US'),
//         Locale('ne', 'NP'),
//       ],
//       localizationsDelegates: const [
//         KhaltiLocalizations.delegate,
//       ],
//     );  
//   } 
// );

   KhaltiService.publicKey = 'test_public_key_781201cbfd7644f2923c26f52aaf6564';

    await Khalti.init(
      publicKey: 'test_public_key_781201cbfd7644f2923c26f52aaf6564',
      enabledDebugging: false
    );
  
  
  Get.put(Authentication());
  Get.put(CategoryController());
  Get.put(CartController());
  runApp(const MaterialApp(
      home: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "My First Flutter Project",
          home: HomePage())));
          debugShowCheckedModeBanner: false;
          
}


