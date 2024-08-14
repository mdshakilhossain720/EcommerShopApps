
import 'package:ecommerceshop/presentations/state_holders/bottomnavbarmain.dart';
import 'package:get/get.dart';



class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(BottomNavBarController());
  }


}