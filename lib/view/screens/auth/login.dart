import 'dart:ui';

import 'package:doctor_module/consts/app_colors.dart';
import 'package:doctor_module/consts/app_sizes.dart';
import 'package:doctor_module/consts/app_styling.dart';
import 'package:doctor_module/generated/assets.dart';
import 'package:doctor_module/view/Widgets/commonImageView.dart';
import 'package:doctor_module/view/Widgets/my_button.dart';
import 'package:doctor_module/view/Widgets/my_text.dart';
import 'package:doctor_module/view/Widgets/textfield.dart';
import 'package:doctor_module/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xffF5EBE0),
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            CommonImageView(
              imagePath: Assets.imagesSplash,
              height: Get.height,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Container(
                  height: 420,
                  width: Get.width * 0.9,
                  decoration: rounded2(
                    kgreen.withOpacity(0.8),
                    Colors.transparent,
                  ),
                  child: Padding(
                    padding: AppSizes.HORIZONTAL,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CommonImageView(
                          imagePath: Assets.imagesLogo2,
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        MyText(
                          text: 'Sign In',
                          textAlign: TextAlign.center,
                          color: kwhite,
                          weight: FontWeight.bold,
                        ),

                        Container(
                          decoration: rounded2(
                              Colors.transparent, kwhite.withOpacity(0.3)),
                          child: Column(
                            children: [
                              MyTextField(
                                filledColor: Colors.transparent,
                                bordercolor: Colors.transparent,
                                hint: 'Email',
                                hintColor: kwhite,
                                marginBottom: 0,
                              ),
                              Divider(
                                color: kwhite.withOpacity(0.3),
                                height: 0,
                              ),
                              MyTextField(
                                bordercolor: Colors.transparent,
                                hint: 'PAssword',
                                filledColor: Colors.transparent,
                                hintColor: kwhite,
                                marginBottom: 0,
                              ),
                            ],
                          ),
                        ),
                        // Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Expanded(
                        //         child: Row(
                        //       crossAxisAlignment:
                        //           CrossAxisAlignment.start,
                        //       children: [
                        //         CustomCheckBox(
                        //             isActive: false, onTap: () {}),
                        //         Expanded(
                        //           child: MyText(
                        //             text: cbremember,
                        //             paddingLeft: 10,
                        //             color: kPrimaryColor,
                        //             size: 10,
                        //           ),
                        //         )
                        //       ],
                        //     )),
                        //     MyText(
                        //       text: lforget,
                        //       decoration: TextDecoration.underline,
                        //       color: kPrimaryColor,
                        //       size: 10,
                        //     ),
                        //   ],
                        // ),
                        MyButton(
                          height: 35,
                          fontSize: 10,
                          radius: 50,
                          onTap: () {
                            Get.offAll(() => BottomNavBar());
                          },
                          buttonText: 'Log IN',
                          fillColor: kwhite,
                          hasgrad: false,
                          fontColor: kgreen,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
    //     ],
    //   ),
    // ),
    //);
  }
}
