import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  late ScrollController scrollController;
  var scrollOffset = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
  }

  _scrollListener() {
    scrollOffset.value = scrollController.offset;
    scrollOffset.refresh();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
