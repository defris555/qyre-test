import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';

abstract class AppIcons {
  static Widget document({Color? color}) => SvgPicture.asset(
        'assets/svg/document.svg',
        color: color ?? black,
        fit: BoxFit.fill,
      );

  static Widget home({Color? color}) => SvgPicture.asset(
        'assets/svg/home_icon.svg',
        color: color ?? white,
        fit: BoxFit.fill,
      );

  static Widget homeBurger({Color? color}) => SvgPicture.asset(
        'assets/svg/home_burger.svg',
        color: color ?? white,
        fit: BoxFit.fill,
      );

  static Widget notificationBell({Color? color}) => SvgPicture.asset(
        'assets/svg/notification_bell.svg',
        color: color ?? white,
        fit: BoxFit.fill,
      );

  static Widget people({Color? color}) => SvgPicture.asset(
        'assets/svg/people.svg',
        color: color ?? white,
        fit: BoxFit.fill,
      );

  static Widget smallArrowRight({Color? color}) => Padding(
        padding: const EdgeInsets.only(bottom: 3.0),
        child: SvgPicture.asset(
          'assets/svg/small_arrow_right.svg',
          color: color ?? black,
          fit: BoxFit.fill,
        ),
      );

  static Widget qyre({Color? color}) => SvgPicture.asset(
        'assets/svg/qyre.svg',
        color: color ?? white,
        fit: BoxFit.fill,
      );
}
