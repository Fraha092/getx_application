import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController{
  final _box=GetStorage();//getStorage() class used for store data and retrieve. called a local database.
final _key='isDarkMode';

ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;
 bool _loadTheme() => _box.read(_key) ?? false; // for retrieve
 void saveTheme(bool isDarkMode)=> _box.write(_key, isDarkMode); // for update
 void changeTheme(ThemeData theme)=> Get.changeTheme(theme);
 void changeThemeMode(ThemeMode themeMode)=> Get.changeThemeMode(themeMode);

}