import 'dart:ui';

import 'package:doctor_module/consts/app_colors.dart';
import 'package:doctor_module/consts/app_sizes.dart';
import 'package:doctor_module/consts/app_styling.dart';
import 'package:doctor_module/generated/assets.dart';
import 'package:doctor_module/view/Widgets/commonImageView.dart';
import 'package:doctor_module/view/Widgets/my_text.dart';
import 'package:doctor_module/view/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CommonImageView(
          imagePath: Assets.imagesSplash,
          height: Get.height,
          width: Get.width,
          fit: BoxFit.cover,
        ),
        Center(
          child: Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 10.0),
                child: Container(
                  height: 150,
                  width: Get.width * 0.8,
                  decoration: rounded2(
                    Colors.black.withOpacity(0.45),
                    Colors.transparent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonImageView(
                        imagePath: Assets.imagesLogo1,
                        height: 30,
                        width: 30,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: AppSizes.HORIZONTAL,
                        child: LinearPercentIndicator(
                          animation: true,
                          animationDuration: 2000,
                          percent: 1.0,
                          progressColor: kgreen,
                          onAnimationEnd: () {
                            Get.offAll(() => Login());
                          },
                          backgroundColor: kwhite,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          barRadius: Radius.circular(10),
                          lineHeight: 10,
                        ),
                      ),
                      MyText(
                        text: 'Loading....',
                        color: kwhite,
                        weight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
