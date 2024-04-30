import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:virtual/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleSearchViewOne extends StatelessWidget {
  AppbarTitleSearchViewOne({
    Key? key,
    this.hinttext,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hinttext;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width:263.h,
        controller: controller,
        hinttext : "lbl_nike_max".tr,
      ),
    );
  }
}