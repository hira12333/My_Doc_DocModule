import 'package:doctor_module/consts/app_colors.dart';
import 'package:doctor_module/consts/app_styling.dart';
import 'package:doctor_module/main.dart';
import 'package:doctor_module/view/Widgets/app_bar.dart';
import 'package:doctor_module/view/Widgets/commonImageView.dart';
import 'package:doctor_module/view/Widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar2(title: 'Chat', haveBackButton: F, centerTitle: T),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.all(10),
                      decoration: rounded2r(klightblue, ktransparent, 20),
                      child: Row(
                        children: [
                          CommonImageView(
                            url: dummyImage,
                            height: 50,
                            width: 50,
                            radius: 100,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(text: 'Hira Zaheer'),
                                MyText(text: '@hira123')
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
