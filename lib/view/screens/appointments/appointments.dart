import 'package:doctor_module/consts/app_colors.dart';
import 'package:doctor_module/consts/app_fonts.dart';
import 'package:doctor_module/view/Widgets/app_bar.dart';
import 'package:flutter/material.dart';

class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  final List<Widget> tabBarView = [
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  final List<String> _tabs = [
    'All',
    'Pending',
    'Approved',
    'Completed',
    'Cancelled'
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: simpleAppBar2(
          title: 'Appointments',
          centerTitle: true,
          size: 18,
          haveBackButton: false,
        ),
        backgroundColor: kwhite,
        key: _scaffoldKey,
        body: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 50,
                centerTitle: false,
                backgroundColor: kwhite,
                surfaceTintColor: kwhite,
                pinned: true,
                floating: false,
                leading: null,
                iconTheme: IconThemeData(color: Colors.transparent),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: kwhite,
                    width: double.infinity,
                    height: 50,
                    child: TabBar(
                      automaticIndicatorColorAdjustment: false,
                      labelColor: kgreen,
                      unselectedLabelColor: kgreen,
                      labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFonts.manrope,
                          color: kgreen),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFonts.manrope,
                          color: kgrey2),
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
                      labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      // controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      dividerColor: ktransparent,
                      indicatorColor: kblack,
                      //      labelPadding: EdgeInsets.symmetric(horizontal: 3),
                      tabs: List.generate(
                        _tabs.length,
                        (index) => Tab(
                          text: _tabs[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
              physics: BouncingScrollPhysics(), children: tabBarView),
        ),
      ),
    );
  }
}
