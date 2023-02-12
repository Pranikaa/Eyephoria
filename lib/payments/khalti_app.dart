import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

class KhaltiApp extends StatefulWidget {
  const KhaltiApp({Key? key}) : super(key: key);

  @override
  State<KhaltiApp> createState() => _KhaltiAppState();
}

class _KhaltiAppState extends State<KhaltiApp> {
  TextEditingController amountController = TextEditingController();

  getAmt(){
    return int.parse(amountController.text) * 100; //converting to paisa
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Khalti Payment Integration'),
        ),
        body: Container(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: const [
               SizedBox(height: 15,),
               //for amount
               TextField(
                //controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter amount to pay",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )
                ),
               ),
                SizedBox(
                height: 8,
               ),

              //  //for button
              //  MaterialButton(
              //   shape: RoundedRectangleBorder(
              //     //borderRadius: BorderRadius.circular(8),
              //     side:  BorderSide(color: Colors.red)),
              //     height: 50,
              //     color:  Color(0xFF56328c),
              //      child: Text(
              //       'Pay with Khalti',
              //       style: TextStyle(color: Colors.white, fontSize: 22),
              //     ),
              //   onPressed: (){
              //     KhaltiScope.of(context).pay(
              //       config: PaymentConfig(
              //         amount: getAmt(), 
              //         productIdentity: 'dells-sssssg5-g5510-2021', 
              //         productName: productName,
              //       ),

              //         preferences: [
              //           PaymentPreference.khalti,
              //         ],

              //         onSuccess: (su) {
              //           const successsnackBar = SnackBar(
              //             content: Text('Payment Successful'),
              //           );

              //           ScaffoldMessenger.of(context)
              //             .showSnackBar(successsnackBar);
              //         },

              //          onFailure: (fa) {  
              //           const failedsnackBar = SnackBar(
              //             content: Text('Payment Failed'));

              //             ScaffoldMessenger.of(context)
              //             .showSnackBar(failedsnackBar);
              //         },

              //         onCancel: () {
              //           const cancelsnackBar = SnackBar(
              //             content: Text('Payment Cancelled'));

              //             ScaffoldMessenger.of(context)
              //             .showSnackBar(cancelsnackBar);
              //         },
              //   }
              //  ),
            ],
          ),
          

        ),
      );
  }
}

