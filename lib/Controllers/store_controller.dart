import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StoreController extends GetxController{
  //ReviewRepository repository;
 // StoreController({required this.repository});

  final storeName='Thick Shake'.obs;
  final followerCount=0.obs;
  final storeStatus=true.obs;
  final followerList=[].obs;
  final reviews=<storeReviews>[].obs;
  final storeNameEditingController=TextEditingController();
  final reviewEditingController=TextEditingController();
  final followerController=TextEditingController();
  final reviewNameController=TextEditingController();
  int storeFollowerCount=0;
  static StoreController get to=> Get.find();


}