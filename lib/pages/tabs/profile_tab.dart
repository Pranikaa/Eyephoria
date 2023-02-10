import 'package:eyephoria_pranika_fyp/controller/authentication_controller.dart';
import 'package:eyephoria_pranika_fyp/pages/loader.dart';
import 'package:eyephoria_pranika_fyp/pages/profile/profile_menu.dart';
import 'package:eyephoria_pranika_fyp/pages/profile/update_profile.dart';
import 'package:eyephoria_pranika_fyp/utils/shared_preds.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileTab extends StatelessWidget {
  final AuthService authService= AuthService();
  final authentication=Get.find<Authentication>(); 
  ProfileTab({Key? key, required List<Container> children}) : super(key: key);

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
                           fontSize: 26,
                           color: Color(0xff2462b7),
                           fontWeight: FontWeight.w700,
                        ),
                           softWrap: false,
                        ),
                      ),  
                      const Padding(
                        padding: EdgeInsets.all(40.0) , 
                        child: Icon(Icons.menu),
                        ),
                         ],),
               
               Center(
                 child: Stack(
              children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(borderRadius: BorderRadius.circular(100),
                    child:Image.asset(
                              "assets/images/profile.png",
                              height: 70,
                              width: 70,
                            
                    ) ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:Colors.lightBlue,
                      ),
                      child: const Icon(
                        Icons.create,
                        size: 19,
                        color: Colors.white,),
                    ),
                  ),
              ], 
            ),
               ),
            //for profile name
                  const Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Center(
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
                  ),

            //edit profile
            const SizedBox(height: 20,),         
              Center(
                child: SizedBox(
                  width: 140,
                  child: ElevatedButton(
                    onPressed:()=>Get.to(UpdateProfilePage()), 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    side: BorderSide.none,
                    shape: const StadiumBorder()
                  ),
                  child: const Text("Edit Profile",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                  )),
                  ),
                ),
              ),
            
               const SizedBox(height: 25,),
               const Divider(),
               const SizedBox(height: 10,),
                //menu
            ProfileMenu(title: "Settings",icon: Icons.settings_outlined,onPressed: (){}) ,
            ProfileMenu(title: "Transactions",icon: Icons.wallet,onPressed: (){}) ,
            ProfileMenu(title: "About Us",icon: Icons.info_outline_rounded,onPressed: (){}) ,
            
            const Divider(color: Colors.grey,),
            const SizedBox(height: 10,),
            ProfileMenu(
              title: "Logout",
              icon: Icons.logout,
              textColor: Colors.red,
              endIcon:false,
              onPressed: (){}) ,
           
            Center(child: ElevatedButton(onPressed: ()=>logout(),
                     child:
                     const Text("Logout")), ),       
                      //     Row(
                      //       // ignore: prefer_const_literals_to_create_immutables
                      //       children: [
                      //          const Padding(
                      //          padding: EdgeInsets.all(15.0),
                      //          child: Text(
                      //           'Edit Profile',
                      //           style: TextStyle(
                      //             fontFamily: 'Segoe UI',
                      //             fontSize: 18,
                      //             color:  Color(0xffaeb0b4),
                      //           ),
                      //           softWrap: false,
                      //         ), 
                      // ),
                      //       ],
                      //     ),  
                 ],  
               ),
            ),
          );
  }
  logout() async{
  await authentication.logout();
  Get.offAll(const Loader());
  }
}

//  Obx(() => Wrap(
      //        children: productController.products.value
      //            .map((Product product) => ProductComponent(product: product))
      //            .toList(),
      //      )), 

