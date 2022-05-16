import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/widgets.dart';

import '../controllers/main_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headline = Theme.of(context).textTheme.headline1!;
    final mainController = Get.find<MainController>();
    return Obx(
      () => SafeArea(
        top: false,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          bottomNavigationBar: const BottomBar(),
          appBar: PreferredSize(
            child: Column(
              children: [
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: AppBar(
                      title: Text('My Availability', style: headline),
                      elevation: 0.0,
                      backgroundColor: Colors.white70,
                    ),
                  ),
                ),
                mainController.scrollOffset > 125
                    ? Container(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                          bottom: 10.h,
                        ),
                        width: context.width,
                        height: 56.h,
                        color: Colors.white70,
                        child: const Calendar(isBottom: true),
                      )
                    : const SizedBox(),
              ],
            ),
            preferredSize: Size(
              double.infinity,
              mainController.scrollOffset < 125 ? 60.h : 140.h,
            ),
          ),
          body: SizedBox(
            height: context.height,
            width: context.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: SingleChildScrollView(
                controller: mainController.scrollController,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 90.h),
                    const Calendar(),
                    const TasksSection(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text(
                        'Today’s productions',
                        style: headline,
                      ),
                    ),
                    const ProductionsSection(),
                    const ButtonsSection(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text(
                        'My job offers',
                        style: headline,
                      ),
                    ),
                    const OffersSection(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text(
                        'Starred posts',
                        style: headline,
                      ),
                    ),
                    const PostsSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
