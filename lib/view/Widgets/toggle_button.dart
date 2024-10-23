
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/app_colors.dart';
import 'my_text.dart';

class mytogglebutton extends StatefulWidget {
  const mytogglebutton({super.key});

  @override
  State<mytogglebutton> createState() => _mytogglebuttonState();
}

class _mytogglebuttonState extends State<mytogglebutton> {
  bool isTransportSelected = true;

  void _toggleSelection() {
    setState(() {
      isTransportSelected = !isTransportSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _toggleSelection,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: Get.width,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: kwhite),
              color: klightblue),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //  isTransportSelected? Get.to(()=>WhereToGo()):Get.to(()=>WhereToGo());
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: isTransportSelected ? kwhite : Colors.transparent,
                      borderRadius: isTransportSelected
                          ? BorderRadius.circular(15)
                          : BorderRadius.circular(0),
                    ),
                    child: Center(
                      child: MyText(
                        text: 'Login',
                        color: isTransportSelected ? kblack2 : kblack2,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    //isTransportSelected? Get.to(()=>WhereToGo()):Get.to(()=>WhereToGo());
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: isTransportSelected ? ktransparent : kwhite,
                      borderRadius: isTransportSelected
                          ? BorderRadius.circular(0)
                          : BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: MyText(
                        text: 'Register',
                        color: isTransportSelected ? kblack2 : kblack2,
                        size: 16,
                        weight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
