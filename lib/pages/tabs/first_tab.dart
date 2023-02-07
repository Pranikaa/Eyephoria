import 'package:eyephoria_pranika_fyp/controller/cart_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/product_controller.dart';
import 'package:eyephoria_pranika_fyp/pages/tabs/book_tab1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//This is the landing page of the application

class FirstTab extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  final CartController cartController = Get.find<CartController>();

  FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" \n Welcome To Eyephoria"),
        // actions: [
        //   Container(
        //     padding: const EdgeInsets.only(right: 60),
        //     child: InkWell(
        //       onTap: () => Get.to(() => CartPage(children: const [],)),
        //       child: Badge(
        //         badgeContent:
        //             Obx(() => Text(cartController.cart.length.toString())),
        //         child: const Icon(Icons.shopping_cart),
        //       ),
        //     ),
        //   )
        // ],
      ),
       body: SafeArea(
        child: Center(
          child: Column(
                   children: [
                     Image.asset(
                       "assets/images/logo.png",
                       height: 280,
                       width: 280,
                     ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 150, 
                      width: 350,
                      decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                      colors: [
                        Color(0xffc3dcff),
                        Color(0xffffffff),
                        Color(0xff808080)
                      ],
                      stops: [0.0, 1.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(41.0),
                    border: Border.all(width: 2.0, color: const Color(0xff5b9df9)),
                    ),    
                          
          child: Row(
            children: const[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  Icons.remove_red_eye,
                  color:  Color.fromARGB(255, 3, 51, 90),
                  size:75,
                ),
              ),
               Center(child: Text('BUY \nOPTICALS',
                style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 28,
                color:  Color(0xff2462b7),
                fontWeight: FontWeight.w700,
               ),
                softWrap: false,)
                ),
            ],
          ),
           ),
                  ),

        //for appointment
        Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                        height: 150, 
                        width: 350,
                decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                colors: [
                  Color(0xffc3dcff),
                  Color(0xffffffff),
                  Color(0xff808080)
                 ],
                 stops: [0.0, 1.0, 1.0],
                 ),
                borderRadius: BorderRadius.circular(41.0),
                border: Border.all(width: 2.0, color: const Color(0xff5b9df9)),
                
                ),
          child: Row(
            children:  [
             const Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  Icons.calendar_today,
                  color:  Color.fromARGB(255, 3, 51, 90),
                  size:75,
                ),
              ),
              InkWell(
                    onTap: () => Get.to(()=> BookTab1()),
                    child: const Text('BOOK \nAPPOINTMENT',
                style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 28,
                color:  Color(0xff2462b7),
                fontWeight: FontWeight.w700,
               ),
                softWrap: false,
                ),
                ),
             
            ],
          ),
           ),
           ),],
           
          ),        
        ),
      ),
    );                  
  }
}



//  Obx(() => Wrap(
      //        children: productController.products.value
      //            .map((Product product) => ProductComponent(product: product))
      //            .toList(),
      //      )), 