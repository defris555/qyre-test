import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qyre_test/src/widgets/icons.dart';

import '../utils/utils.dart';

class ProductionsSection extends StatelessWidget {
  const ProductionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _Production(
          title: 'Production Name That is Long',
          image: 'assets/images/image1.png',
          country: 'Sweden',
          startDate: 'Jan 14, 2022',
          endDate: 'Feb 23, 2023',
        ),
        SizedBox(height: 16.h),
        const _Production(
          title: 'What has bee seen very very long te TEXTISVERYVERYLONG',
          image: 'assets/images/image2.png',
          country: 'Sweden',
          startDate: 'Jan 14, 2022',
          endDate: 'Feb 23, 2023',
        ),
      ],
    );
  }
}

class _Production extends StatelessWidget {
  final String image;
  final String title;
  final String country;
  final String startDate;
  final String endDate;

  const _Production({
    Key? key,
    required this.image,
    required this.country,
    required this.startDate,
    required this.endDate,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodytext1 = Theme.of(context).textTheme.bodyText1!;
    final headline1 = Theme.of(context).textTheme.headline1!;
    return Container(
      width: context.width,
      height: 70.h,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(4), color: grey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                ),
                child: Image.asset(image),
              ),
              Row(
                children: [
                  SizedBox(width: 8.w),
                  SizedBox(
                    height: 30.h,
                    width: 250.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: headline1.copyWith(fontSize: 13.sp),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '$country    $startDate - $endDate',
                          style: bodytext1.copyWith(
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: AppIcons.smallArrowRight(),
          ),
        ],
      ),
    );
  }
}
