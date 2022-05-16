import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qyre_test/src/utils/colors.dart';
import 'package:qyre_test/src/widgets/icons.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _Button(
            icon: AppIcons.people(color: white),
            title: 'My network',
            subTitle: 'Connect and grow your network',
            startColor: topLeftBlue,
            endColor: bottomRightBlue,
          ),
          _Button(
            icon: AppIcons.qyre(color: white),
            title: 'Quick hire',
            subTitle: 'Hire someone quickly today',
            startColor: topLeftRed,
            endColor: bottomRightRed,
          ),
          _Button(
            icon: AppIcons.document(color: white),
            title: 'My CV',
            subTitle: 'Keep your CV updated to get relevant offers',
            startColor: topLeftPurple,
            endColor: bottomRightPurple,
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subTitle;
  final Color startColor;
  final Color endColor;

  const _Button(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.startColor,
      required this.endColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodytext1 = Theme.of(context).textTheme.bodyText1!;
    final headline1 = Theme.of(context).textTheme.headline1!;
    return Container(
      width: 110.w,
      height: 140.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(4.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Expanded(flex: 1, child: icon),
            SizedBox(height: 16.h),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: headline1.copyWith(color: white, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    subTitle,
                    style: bodytext1.copyWith(color: white, fontSize: 10.sp),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
