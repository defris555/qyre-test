import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:qyre_test/src/widgets/icons.dart';

import '../utils/utils.dart';

class OffersSection extends StatelessWidget {
  const OffersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodytext1 = Theme.of(context).textTheme.bodyText1!;
    final headline1 = Theme.of(context).textTheme.headline1!;
    return Container(
      margin: EdgeInsets.only(top: 8.h, bottom: 16.h),
      width: double.infinity,
      height: 128.h,
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/job_offers.png'),
            SizedBox(width: 20.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Job offers are shown here!\nKeep your profile updated to stay\nrelevant for new opportunities.',
                  style: bodytext1.copyWith(fontSize: 15.sp, height: 1.2),
                  softWrap: false,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Go to my profile',
                        style: headline1.copyWith(fontSize: 14.sp),
                      ),
                      AppIcons.smallArrowRight(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
