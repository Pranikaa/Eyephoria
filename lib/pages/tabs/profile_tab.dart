import 'package:eyephoria_pranika_fyp/controller/cart_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileTab extends StatelessWidget {

  const ProfileTab({Key? key, required List<Container> children}) : super(key: key);

 // final ProductController productController = Get.put(ProductController());

 // final CartController cartController = Get.find<CartController>();

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
                                '      My Profile',
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


                      //for profile picture and name
                         Row(
                       children: [
                         Image.asset(
                           "assets/images/profile.png",
                           height: 100,
                           width: 100,
                         ),
                         const Padding(
                           padding: EdgeInsets.all(5.0),
                           child: Text(
                              '   Name ',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 22,
                                color:  Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: false,
                        ),
                      ),
                      
                         ],),
                      
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                               const Padding(
                               padding: EdgeInsets.all(15.0),
                               child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 18,
                                  color:  Color(0xffaeb0b4),
                                ),
                                softWrap: false,
                              ), 
                      ),
                            ],
                          ),  
                      //for contact
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: const [
                             Text('Contact: ',
                              style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 22,
                              color:  Color(0xff000000),
                             ),
                              softWrap: false,
                              textAlign: TextAlign.justify,
                     ),
                     //for contact text box
                    //  Padding(
                    //    padding: const EdgeInsets.all(10.0),
                    //    child: Column(
                    //        children: [
                    //           Container(
                    //         padding: const EdgeInsets.all(2.0),
                    //         height: 40,
                    //         width: 200,
                    //         decoration: BoxDecoration(
                    //         color: const Color(0xffffffff),
                    //         border: Border.all(width: 1.0, color: const Color(0xff707070)),
                    //       ),
                    // ), ],
                    //    ), ),
                        ],),),
                      
                      //for address 
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: const [
                              Text('Address: ',
                              style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 22,
                              color:  Color(0xff000000),
                             ),
                              softWrap: false,
                              textAlign: TextAlign.justify,
                     ),
                     //for address text box 
                    //  Padding(
                    //    padding: const EdgeInsets.all(10.0),
                    //    child: Column(
                    //        children: [
                    //           Container(
                    //         padding: const EdgeInsets.all(5.0),
                    //         height: 40,
                    //         width: 200,
                    //         decoration: BoxDecoration(
                    //         color: const Color(0xffffffff),
                    //         border: Border.all(width: 1.0, color: const Color(0xff707070)),
                    //       ),
                    // ), ],
                    //    ), ), 
                       ],),),

                    //for order
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('Order:',
                        style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color:  Color(0xff000000),
                       ),
                        softWrap: false,
                       ),
                    ),


                    //for payment
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('Payments:',
                        style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color:  Color(0xff000000),
                       ),
                        softWrap: false,
                       ),
                    ),

                    //for about us
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('About Us:',
                        style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color:  Color(0xff000000),
                       ),
                        softWrap: false,
                       ),
                    ),
                 ],  
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

