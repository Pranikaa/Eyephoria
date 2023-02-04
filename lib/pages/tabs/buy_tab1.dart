import 'package:badges/badges.dart';
import 'package:eyephoria_pranika_fyp/controller/cart_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/product_controller.dart';
import 'package:eyephoria_pranika_fyp/pages/cart_page.dart';
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
                           padding: EdgeInsets.all(1.0),
                           child: Text(
                                '  BUY  OPTICALS',
                           style: TextStyle(
                           fontFamily: 'Segoe UI',
                           fontSize: 24,
                           color: Color(0xff2462b7),
                           fontWeight: FontWeight.w700,
                        ),
                           softWrap: false,
                        ),
                      ), 
                      // cart icon
                      Container(
                         padding: const EdgeInsets.only(left: 25),
            child: InkWell(
              onTap: () => Get.to(() => CartPage()),
              child: Badge(
                badgeContent:
                    Obx(() => Text(cartController.cart.length.toString())),
                child: const
                 Icon(Icons.shopping_cart),
              ),
            ),
                      ), 
                  ],),
                         
                         

                          Row(
                       children:  [
                        Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                        height: 150, 
                        width: 368,
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
              Padding(
                padding: const EdgeInsets.all(18.0),
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
                          ),),),  
                 ],
            ),

            Row(
                       children:  [
                        Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                        height: 150, 
                        width: 368,
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
              Padding(
                padding: const EdgeInsets.all(18.0),
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
                                      'Glasses',
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
                          ),),),  
                 ],
            ),

            Row(
                       children:  [
                        Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                        height: 150, 
                        width: 368,
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
              Padding(
                padding: const EdgeInsets.all(18.0),
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
                                      'Women Glasses',
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
                          ),),),  
                 ],
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

