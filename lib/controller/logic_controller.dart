import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogicController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum=> books.value+pens.value;

  incrementBooks() {
    books.value++;
  }

  decrementBooks() {
    if (books.value <= 0) {
      Get.snackbar(
        snackPosition: SnackPosition.TOP,
        isDismissible: true,
        barBlur: 20,
        backgroundColor: Colors.red.shade50,
        duration: Duration(seconds: 2),
        "Buying Books",
        "Please Select Minimum 1 Pcs",
      );
    } else {
      books.value--;
    }
  }

  incrementPens() {
    pens.value++;
  }

  decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar(
          snackPosition: SnackPosition.TOP,
          barBlur: 20,
          backgroundColor: Colors.red.shade50,
          isDismissible: true,
          "Buying Pens",
          "Can not be less than Zero");
    } else {
      pens.value--;
    }
  }
}
