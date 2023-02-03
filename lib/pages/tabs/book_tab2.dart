// ignore_for_file: non_constant_identifier_names

import 'package:eyephoria_pranika_fyp/controller/cart_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//for book appointment

class BookTab2 extends StatefulWidget {

  BookTab2({Key? key}) : super(key: key);

  @override
  State<BookTab2> createState() => _BookTab2State();
}

class _BookTab2State extends State<BookTab2> {
  final ProductController productController = Get.put(ProductController());

  final CartController cartController = Get.find<CartController>();

  // bool valuefirst = false;
  // bool valuesecond = false;
  // bool valuethird = false;
  // bool valuefourth = false;
  // bool valuefifth = false;

  int _value=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
       // title: const Text("Welcome To Eyephoria"),
        
     //  ),
       body: SafeArea(
        child: Center(
          child: Column(
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
                                'BOOK APPOINTMENTS',
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
                             "assets/images/doctor.jpg",
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
                                      'Dr. Pragya Oli',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 18,
                                        color:  Color.fromARGB(255, 0, 0, 0),
                                        height: 1.5,
                                      ),
                                      softWrap: false,
                                      ),                      
                                     Text(
                                      'MD, Ophthalmology',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 18,
                                        color:  Color.fromARGB(255, 0, 0, 0),
                                        height: 1.5,
                                      ),
                                      softWrap: false,
                                     ),
                                     Text(
                                      'NMC Number: 2540',
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
                     ),
                       
                     const Padding(
                       padding: EdgeInsets.all(40.0),
                       child: Text(
                        'Choose Time',
                        style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 26,
                        color:  Color(0xff2462b7),
                        fontWeight: FontWeight.w700,
                    ),
                         softWrap: false,
                    ),
                     ),             
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Row(
                          children:[
                            Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (_){
                                setState(() {
                                _value=1;
                                  });
                                },
                              ),
                          //const Icon(Icons.alarm),
                          const SizedBox(width: 10.0,),
                          const Text("10:00 AM"),
                          ],
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Row(
                          children:[
                          Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (_){
                              setState((){
                                _value=2;
                                }
                              );
                            },
                          ),
                          const SizedBox(width: 10.0,),
                          const Text("11:00 PM"),
                          ],
                          ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Row(
                          children:[
                          Radio(
                            value: 3,
                            groupValue: _value,
                            onChanged: (_){
                              setState((){
                                _value=3;
                                }
                              );
                            },
                          ),
                          const SizedBox(width: 10.0,),
                          const Text("1:00 PM"),
                          ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Row(
                          children:[
                          Radio(
                            value: 4,
                            groupValue: _value,
                            onChanged: (_){
                              setState((){
                                _value=4;
                                }
                              );
                            },
                          ),
                          const SizedBox(width: 10.0,),
                          const Text("2:00 PM"),
                          ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Row(
                          children:[
                          Radio(
                            value: 5,
                            groupValue: _value,
                            onChanged: (_){
                              setState((){
                                _value=5;
                                }
                              );
                            },
                          ),
                          const SizedBox(width: 10.0,),
                          const Text("3:30 PM"),
                          ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Row(
                          children:[
                          Radio(
                            value: 6,
                            groupValue: _value,
                            onChanged: (_){
                              setState((){
                                _value=6;
                                }
                              );
                            },
                          ),
                          const SizedBox(width: 10.0,),
                          const Text("4:30 PM"),
                          ],
                          ),
                        ),
          //check box
          // CheckboxListTile(
          //  secondary: const Icon(Icons.alarm),  
          //         title: const Text('4:00 AM'),   
          //         value: valuefifth,  
          //         activeColor: const Color.fromARGB(255, 7, 94, 245),

          //         onChanged: ((value) {
          //           setState(() {valuefifth=value!;});
          //         }),                 
          // ),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Row(
               children: const [
                  Padding(
                   padding: EdgeInsets.only(left: 70.0),
                   child: Text('Book',
                        style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 28,
                        color:  Color(0xff2462b7),
                        fontWeight: FontWeight.w700,
                       ),
                        softWrap: false,
                        ),   
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: 60),
                     child: Text('Cancel',
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
        ],       
        ),
      ),
      )
    );          
  }
}

//  Image.asset(
                        //    "assets/images/icons/Icon_awesome-glasses.svg",
                        //    height: 250,
                        //    width: 250,
                        //  ),


//  Obx(() => Wrap(
      //        children: productController.products.value
      //            .map((Product product) => ProductComponent(product: product))
      //            .toList(),
      //      )), 