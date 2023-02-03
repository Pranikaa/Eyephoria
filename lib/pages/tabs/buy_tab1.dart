import 'package:eyephoria_pranika_fyp/controller/cart_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyTab1 extends StatelessWidget {

  BuyTab1({Key? key, required List<Container> children}) : super(key: key);

  final ProductController productController = Get.put(ProductController());

  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      // appBar: AppBar(
      //   title: const Text("Welcome To Eyephoria"),
      //   actions: [
      //     Container(
      //     )
      //   ],
      // ),

       body: SafeArea(
        child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                       Row(
                       children: [
                         Image.asset(
                           "assets/images/logo.png",
                           height: 125,
                           width: 125,
                         ),
                         const Padding(
                           padding: EdgeInsets.all(2.0),
                           child: Text(
                                '      BUY  OPTICALS',
                           style: TextStyle(
                           fontFamily: 'Segoe UI',
                           fontSize: 22,
                           color: Color(0xff2462b7),
                           fontWeight: FontWeight.w700,
                        ),
                           softWrap: false,
                        ),
                      ),  
                         ],),
 
                          Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 20.0),
                           child: Image.asset(
                             "assets/images/warby eyeglass.jfif",
                             height: 100,
                             width: 100,
                           ),
                         ),
                               Padding(
                                 padding: const EdgeInsets.all(19.0),
                                 child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                   children: const [                                     
                                    Text(
                                      'Product Name: Glasses',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 18,
                                        color:  Color.fromARGB(255, 0, 0, 0),
                                        height: 1.5,
                                      ),
                                      softWrap: false,
                                      ),                      
                                     Text(
                                      'Nrs: 700',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 18,
                                        color:  Color.fromARGB(255, 0, 0, 0),
                                        height: 1.5,
                                      ),
                                      softWrap: false,
                                     ),
                                     Text(
                                      'The description of the \n glasses.',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 18,
                                        color:  Color.fromARGB(255, 0, 0, 0),
                                        height: 1.5,
                                      ),
                                      softWrap: false,
                                     ),
                                   ], 
                                 ),
                               ),                        
                       ], 
                          ),],  
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

