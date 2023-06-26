import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/welcome/view.dart';
import '../../pages/welcome/bindings.dart';
import 'names.dart';
import 'observers.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const APPlication = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
  ];
}
