import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../controller/logic_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
   Get.put(LogicController());
  }

}