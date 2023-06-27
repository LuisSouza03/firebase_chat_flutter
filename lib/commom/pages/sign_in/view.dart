import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Center(
          child: Text('Sign in Page'),
        )
      ],
    ));
  }
}
