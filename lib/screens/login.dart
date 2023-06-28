import 'package:flutter/material.dart';

import '../constants/app_contants.dart';
import '../constants/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double myConstantValue = MediaQuery.of(context).viewInsets.top + 52;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple.shade200,
            Colors.blue.shade200,
            Colors.green.shade200,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: myConstantValue),
              child: const Image(
                width: 200,
                height: 200,
                image: NetworkImage(loginImageUrl),
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Container(
              width: MediaQuery.sizeOf(context).width,
              margin: const EdgeInsets.only(top: 30, right: 30, left: 36),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                color: Colors.pinkAccent.withOpacity(0.1),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Simple Task ',
                        style: textStyle(24, textColor, FontWeight.w700)),
                    Text('filling system ',
                        style: textStyle(24, textColor, FontWeight.w700)),
                    const SizedBox(height: 20),
                    Text('keep you files ',
                        style: textStyle(20, textColor, FontWeight.w600)),
                    Text('organised more easily',
                        style: textStyle(20, textColor, FontWeight.w600)),
                    const SizedBox(height: 32),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 1.7,
                      height: h50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        color: Colors.deepOrange.withOpacity(0.8),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text(
                        'Let\'s go',
                        style: textStyle(28, Colors.white, FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
