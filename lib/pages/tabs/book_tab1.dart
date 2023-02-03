import 'package:eyephoria_pranika_fyp/controller/cart_controller.dart';
import 'package:eyephoria_pranika_fyp/controller/product_controller.dart';
import 'package:eyephoria_pranika_fyp/pages/tabs/book_tab2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//for book appointment

class BookTab1 extends StatefulWidget {

   const BookTab1({Key? key}) : super(key: key);

  @override
  State<BookTab1> createState() => _BookTab1State();
}

class _BookTab1State extends State<BookTab1> {
  //create datetime variable
    DateTime _dateTime = DateTime.now();

  //show datepicker method
  void  _showDatePicker(){
    showDatePicker(
    context: context,
     initialDate: DateTime.now(), 
     firstDate: DateTime(2000), 
     lastDate: DateTime(2090),
    ).then((value){
      setState(() {
        _dateTime = value!;
      });
    }
     );
  }
  final ProductController productController = Get.put(ProductController());

  final CartController cartController = Get.find<CartController>();


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
                       padding: EdgeInsets.only(top: 80.0),
                       child: Text(
                        'Choose Date',
                        style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 26,
                        color:  Color(0xff2462b7),
                        fontWeight: FontWeight.w700,
                    ),
                         softWrap: false,
                    ),
                     ),
                     //date picker icon is kept to choose the date for booking
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        
                        //display the choosen date
                         Padding(
                           padding: const EdgeInsets.only(left: 50.0),
                           child: Text(_dateTime.toString(), 
                        style: const TextStyle(fontSize: 15) ),
                         ),

                        //button
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: MaterialButton(
                            onPressed: _showDatePicker,                          
                              child: const Icon( 
                                Icons.calendar_today_outlined,
                                color:  Color.fromARGB(255, 3, 51, 90),
                                size:40,  
                              ),              
                            ),
                          ),
                        ],
                      ),  

                InkWell(
                    onTap: () => Get.to(()=> BookTab2()),
                    child: const Text('Ok',
                style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 28,
                color:  Color(0xff2462b7),
                fontWeight: FontWeight.w700,
               ),
                softWrap: false,
                ),
                ),                     
        ],),
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