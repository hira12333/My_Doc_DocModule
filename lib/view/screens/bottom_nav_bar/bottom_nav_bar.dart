import 'dart:developer';

import 'package:doctor_module/consts/app_colors.dart';
import 'package:doctor_module/generated/assets.dart';
import 'package:doctor_module/view/Widgets/my_text.dart';
import 'package:doctor_module/view/screens/appointments/appointments.dart';
import 'package:doctor_module/view/screens/chat/chat_list.dart';
import 'package:doctor_module/view/screens/home/home.dart';
import 'package:doctor_module/view/screens/services/services.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late List<Map<String, dynamic>> items;
  int currentIndex = 2;

  @override
  void initState() {
    super.initState();
    updateItems();
  }

  void updateItems() {
    items = [
      {
        'image': currentIndex == 0
            ? Assets.imagesFillappoint
            : Assets.imagesAppointment,
        'label': 'Appointment',
      },
      {
        'image':
            currentIndex == 1 ? Assets.imagesHeartfill : Assets.imagesHeart,
        'label': 'Services',
      },
      {
        'image': currentIndex == 2 ? Assets.imagesHome : Assets.imagesHome,
        'label': '',
      },
      {
        'image':
            currentIndex == 3 ? Assets.imagesChatfilled : Assets.imagesChat,
        'label': 'Chat',
      },
      {
        'image':
            currentIndex == 4 ? Assets.imagesProfilefill : Assets.imagesProfile,
        'label': 'Profile',
      },
    ];
  }

  final List<Widget> screens = [
    Appointments(),
    Services(),
    Home(),
    ChatList(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: kwhite,
      body: screens[currentIndex],
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.none,
        shadowColor: kgreen,
        surfaceTintColor: klightblue,
        color: klightblue,
        height: 74,
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        elevation: 4,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Expanded(
            child: _buildNavItem(
              0,
            ),
          ),
          Expanded(
            child: _buildNavItem(
              1,
            ),
          ),
          currentIndex == 2
              ? Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 18,
                    width: 50,
                    color: klightblue,
                  ),
                )
              : const SizedBox(width: 60.0),
          Expanded(
            child: _buildNavItem(
              3,
            ),
          ),
          Expanded(
            child: _buildNavItem(
              4,
            ),
          ),
        ]),
      ),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget _buildNavItem(int index) {
    // Fetch the item for the current index
    final item = items[index];

    return InkWell(
      splashColor: klightblue.withOpacity(0.05),
      onTap: () => _onItemTapped(index),
      child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.sr,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      item['image'],
                      height: 18,
                    ),
                    MyText(
                        paddingTop: 4,
                        text: item['label'],
                        size: 10,
                        weight: FontWeight.bold,
                        color: kgreen),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    // bool isSelected = currentIndex == 2;
    return SizedBox(
      height: 70,
      child: FittedBox(
        child: Column(
          children: [
            FloatingActionButton(
              backgroundColor: Colors.transparent,
              onPressed: () {
                _onItemTapped(2);
              },
              elevation: 0,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kgreen,
                    boxShadow: [
                      BoxShadow(
                        color: kgreen.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(2, 2), // Shadow position
                      ),
                    ]),
                child: Center(
                  child: Image.asset(
                    height: 24,
                    fit: BoxFit.contain,
                    width: 24,
                    Assets.imagesHome,
                    // color: isSelected ? kTertiaryColor : Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
      updateItems();
      log(currentIndex.toString());
    });
  }
}
