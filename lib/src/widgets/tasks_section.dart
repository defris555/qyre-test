import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';
import '../widgets/icons.dart';

class TasksSection extends StatelessWidget {
  const TasksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Row(children: [
          _Task(
            title:
                'Complete your profile tooptimize your exposure in job searches.',
            buttonTitle: 'Complete profile',
            hasProgressBar: true,
            onTap: () {},
          ),
          SizedBox(width: 8.w),
          _Task(
            title:
                'Connect with people you might know and extend your network.',
            buttonTitle: 'Connect',
            hasProgressBar: false,
            onTap: () {},
          ),
          SizedBox(width: 8.w),
          _Task(
            title: 'Get verified as an industry professional.',
            buttonTitle: 'Get verified',
            hasProgressBar: false,
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}

class _Task extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final bool hasProgressBar;
  final VoidCallback onTap;
  const _Task({
    Key? key,
    required this.title,
    required this.buttonTitle,
    required this.hasProgressBar,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodytext1 = Theme.of(context).textTheme.bodyText1!;
    final headline1 = Theme.of(context).textTheme.headline1!;
    return Container(
      height: 136.h,
      width: 300.w,
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: headline1.copyWith(fontSize: 16.sp),
              ),
              if (hasProgressBar)
                SizedBox(
                  height: 10.h,
                  width: context.width,
                  child: Stack(
                    children: [
                      Container(
                        color: white,
                      ),
                      Container(
                        width: 200.w,
                        color: blue,
                      )
                    ],
                  ),
                ),
              GestureDetector(
                onTap: onTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(buttonTitle, style: bodytext1),
                    SizedBox(
                      width: 4.w,
                    ),
                    AppIcons.smallArrowRight(),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
