import 'package:flutter/material.dart';
import 'package:get/get.dart';

const primaryColor = Colors.blue;
const backgroundColor = Colors.white;

showMessage({required String message, isSuccess = true}) {
  Get.snackbar(
    "Success",
    message,
    colorText: Colors.white,
    backgroundColor: isSuccess ? Colors.green : Colors.red,
  );
}
