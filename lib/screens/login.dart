import 'package:flutter/material.dart';

import '../constants/app_contants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: NetworkImage(loginImageUrl),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
