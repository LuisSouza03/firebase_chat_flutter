import 'package:firebase_chat_flutter/commom/services/storage.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../values/storage.dart';

class ConfigStore extends GetxController {
  static ConfigStore get to => Get.find();

  bool isFirstOpen = false;
  PackageInfo? _plataform;
  String get version => _plataform?.version ?? '-';
  bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  Locale locale = const Locale('en', 'US');
  List<Locale> languages = [
    const Locale('en', 'US'),
    const Locale('pt', 'BR'),
  ];

  Future<bool> saveAlreadyOpen() async {
    return StorageService.to.setBool(STORAGE_DEVICE_FIRST_OPEN_KEY, true);
  }
}
