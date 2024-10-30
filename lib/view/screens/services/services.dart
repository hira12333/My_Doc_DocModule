import 'package:doctor_module/generated/assets.dart';
import 'package:doctor_module/view/Widgets/commonImageView.dart';
import 'package:doctor_module/view/Widgets/my_button.dart';
import 'package:doctor_module/view/Widgets/my_text.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CommonImageView(
              imagePath: Assets.images4xservicces,
              height: 100,
            ),
          ),
          MyText(
            text: "Haven't added any services\nyet?",
            size: 16,
            weight: FontWeight.bold,
            textAlign: TextAlign.center,
            paddingBottom: 20,
          ),
          MyButton(
            buttonText: 'Add Services',
            mhoriz: 20,
          )
        ],
      ),
    );
  }
}
