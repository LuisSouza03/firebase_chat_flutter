import 'package:firebase_chat_flutter/commom/routes/names.dart';
import 'package:firebase_chat_flutter/commom/pages/welcome/state.dart';
import 'package:get/get.dart';

import '../../store/config.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();

  changePage(int index) {
    state.index.value = index;
  }

  handleSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }
}
