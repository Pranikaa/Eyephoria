
import 'package:eyephoria_pranika_fyp/components/my_button.dart';
import 'package:eyephoria_pranika_fyp/components/my_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/authentication_controller.dart';

class UpdateProfilePage extends StatelessWidget {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();
  final usernameController=TextEditingController();
  final nameController=TextEditingController();
  final phoneController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  final authentication =Get.put(Authentication());
  UpdateProfilePage({Key?key}):super (key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed:()=>Get.back,
        //   icon: const Icon(Icons.arrow_back_ios,
        //   color: Colors.white,),),
        title:  const Padding(
          padding: EdgeInsets.only(left: 75),
           child: Text(
             'Edit Profile',
            style: TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
            softWrap: false,
          ),),
        ),
        
       // backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
             children: [
               Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(borderRadius: BorderRadius.circular(100),
                      child:const Icon( 
                        Icons.person, 
                        color: Colors.blue,
                        size: 45,)),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color:Colors.blue,
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          size: 18,
                          color: Colors.white,
                          ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50,),
                Form(child: Column(
                  children: [
                    MyField(
                    text: "Name",
                    controller: nameController,
                    myValidator: (value)=>null ,
                    prefixIcon: const Icon(
                      Icons.person_outline_rounded,
                      color: Colors.blue,
                    ),
                    //decoration:const InputDecoration(label: Text("FullName"),prefixIcon: Icon(Icons.person_outline)),

                    ),
                    MyField(
                    text: "Phone Number",
                    controller: phoneController,
                    myValidator: (value)=>null,
                    prefixIcon: const Icon(
                      Icons.email_outlined
                    ), 
                    ),
                    MyField(
                    text: "Password",
                    obscureText: true,
                    controller: passwordController,
                    myValidator: (value)=>null,
                    prefixIcon: const Icon(
                      Icons.key_outlined
                    ),
                    ),
                    MyButton(onTap: (){},
                    text: "Save", backgroundColor: const [Colors.blueAccent], 
                    ),
                  ],
                ))
             ],
           ),
        ),
      ),
    );
  }
}