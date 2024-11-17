import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state/controller/logic_controller.dart';

class ShowResult extends StatefulWidget {
  const ShowResult({super.key});

  @override
  State<ShowResult> createState() => _ShowResultState();
}

class _ShowResultState extends State<ShowResult> {
  LogicController logicController = Get.find<LogicController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Total Items",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
         SizedBox(height: 10,),
         Obx(() =>    Text(
           "${logicController.sum.toString()}",
           style: TextStyle(
             fontSize: 25, fontWeight: FontWeight.bold
           ),
         ),),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              Get.back();
            }, child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
