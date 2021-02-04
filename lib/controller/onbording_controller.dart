import 'package:flutter/cupertino.dart';
import 'package:flutter_getx/models/info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class onbordingController extends GetxController{
  var selectedPageIndex = 0.obs;
  var pagController = PageController();

 forwardAction(){
    pagController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
}
  List<onbordingInfo> onbordingPages = [
    onbordingInfo('images/order.png', 'Order Your Food', 'Now you can order food any time  right from your mobile.'),
    onbordingInfo('images/cook.png', 'Cooking Safe Food', 'We are maintain safety and We keep clean while making food.'),
    onbordingInfo('images/deliver.png', 'Quick Delivery', 'Orders your favorite meals will be  immediately deliver.')
  ];

}