import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/utils.dart';
import 'icons.dart';

class PostsSection extends StatelessWidget {
  const PostsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodytext1 = Theme.of(context).textTheme.bodyText1!;
    final headline1 = Theme.of(context).textTheme.headline1!;
    return Container(
      margin: EdgeInsets.only(top: 8.h, bottom: 16.h),
      width: double.infinity,
      height: 128.h,
      decoration:
          BoxDecoration(color: grey, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/starred_posts.png'),
            SizedBox(width: 20.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Posts that are extra relevant to you\ncan be marked with a star and will\nbe shown here for easy access.',
                  style: bodytext1.copyWith(fontSize: 15.sp, height: 1.2),
                  softWrap: false,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
