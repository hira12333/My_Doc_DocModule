import 'package:doctor_module/consts/app_colors.dart';
import 'package:doctor_module/consts/app_styling.dart';
import 'package:doctor_module/generated/assets.dart';
import 'package:doctor_module/main.dart';
import 'package:doctor_module/view/Widgets/animated_text.dart';
import 'package:doctor_module/view/Widgets/app_bar.dart';
import 'package:doctor_module/view/Widgets/commonImageView.dart';
import 'package:doctor_module/view/Widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool startAnimation = false;

  @override
  void initState() {
    // TODO: implement initState

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });

    super.initState();
  }

  final List<Map<String, dynamic>> _items = [
    {
      'title': 'Total Appointments',
      'subtitle': 200.12,
      'isup': true,
    },
    {'title': 'Pending Appointments', 'subtitle': 12.6, 'isup': true},
    {'title': 'Cancelled Appointments', 'subtitle': 5.1, 'isup': true},
    {'title': 'Completed Appointments', 'subtitle': 180.1, 'isup': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar2(
          title: 'Welcome Leon,',
          size: 14,
          haveBackButton: false,
          actions: [
            CommonImageView(
              url: dummyImage,
              radius: 50,
              height: 30,
              width: 30,
            ),
            SizedBox(
              width: 20,
            )
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  decoration: rounded2(
                    Color(0xffE6EEFF),
                    Color(0xffE6EEFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            MyText(
                              text: 'Total Earnings',
                              weight: FontWeight.w800,
                              paddingBottom: 10,
                              size: 16,
                            ),
                            AnimatedText(
                              endCount: 50630.60,
                              fixednumber: 2,
                              size: 24,
                            ),
                          ],
                        )),
                        CircularPercentIndicator(
                          radius: 60,
                          lineWidth: 15,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: kgreen,
                          backgroundColor: ktransparent,
                          percent: 0.8,
                          animation: true,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(
                                text: '80%',
                                color: kgreen,
                                weight: FontWeight.bold,
                                size: 20,
                              ),
                              MyText(
                                text: 'Satisfaction\nlevel',
                                size: 10,
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: _items.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 110,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                  ),
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      curve: Curves.easeInOut,
                      duration: Duration(milliseconds: 300 + (index * 200)),
                      transform: Matrix4.translationValues(
                          startAnimation ? 0 : Get.width, 0, 0),
                      child: Bounce(
                          duration: Duration(milliseconds: 100),
                          onPressed: () {
                            //  Get.to(() => SearchExercise());
                          },
                          child: DashTile(
                            title: _items[index]['title'],
                            count: _items[index]['subtitle'],
                            isup: _items[index]['isup'],
                          )),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DashTile extends StatelessWidget {
  DashTile(
      {super.key,
      required this.title,
      required this.count,
      required this.isup,
      this.ontap});
  String title;
  double count;
  VoidCallback? ontap;
  bool isup;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap ?? () {},
      child: Container(
          decoration: rounded2(
            Color(0xffE6EEFF),
            Color(0xffE6EEFF),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            AnimatedText(
                              endCount: count,
                              size: 22,
                              fixednumber: 0,
                              hasdollor: false,
                            ),
                            MyText(
                              paddingTop: 10,
                              text: title,
                              size: 13,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CommonImageView(
                      imagePath: isup ? Assets.imagesUp : Assets.imagesDown,
                      height: 14,
                      fit: BoxFit.contain,
                      width: 21,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
