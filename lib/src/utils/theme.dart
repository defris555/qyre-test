import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

ThemeData mainTheme() => ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: const AppBarTheme(
        backgroundColor: white,
        foregroundColor: black,
        elevation: 0,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontFamily: 'Matter',
          fontSize: 18.sp,
          height: 1,
          color: titleBlack,
          fontWeight: FontWeight.w700,
        ),
        bodyText1: TextStyle(
          fontFamily: 'Matter',
          fontSize: 16.sp,
          height: 1,
          color: black,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: TextStyle(
          fontFamily: 'Matter',
          fontSize: 10.sp,
          height: 1,
          color: textGrey,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
