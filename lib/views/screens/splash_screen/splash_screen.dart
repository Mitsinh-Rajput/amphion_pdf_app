import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_template/services/route_helper.dart';
import 'package:flutter_template/views/base/custom_image.dart';

import '../start_screen/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer.run(() {
      log("HERE");
      Future.delayed(const Duration(seconds: 2), () {});
      /*if (Get.find<AuthController>().isLoggedIn()) {
        Get.find<AuthController>().getUserProfileData().then((value) {
          Future.delayed(const Duration(seconds: 2), () {
            if (Get.find<AuthController>().checkUserData()) {
              Navigator.pushReplacement(
                context,
                getMaterialRoute(
                  child: const Dashboard(),
                ),
              );
            } else {
              Navigator.pushReplacement(
                context,
                getMaterialRoute(
                  child: const SignupScreen(),
                ),
              );
            }
          });
        });
      } else {
        Navigator.pushReplacement(
          context,
          getMaterialRoute(
            child: const LoginScreen(),
          ),
        );
      }*/
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onHorizontalDragEnd: (value) {
              log('${value.primaryVelocity}');
              if ((value.primaryVelocity ?? 0).isNegative) {
                Navigator.pushReplacement(context, getCustomRoute(child: const IndexScreen()));
              }
            },
            child: CustomImage(
              path: Assets.imagesCoverImage,
              width: size.width,
              height: size.height,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 50,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, getCustomRoute(child: const IndexScreen()));
              },
              icon: const CustomImage(
                path: Assets.imagesPlusIcon,
                height: 40,
                width: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
