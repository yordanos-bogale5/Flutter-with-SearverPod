import 'package:flutter/material.dart';

import 'package:virtual/core/app_export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;
  final double? styleType;
  final double? leadingWidth;
  final double? leading;
  final double? title;
  final double? centerTitle;
  final double? actions;

  @override
  Widget build(BuildContext context){
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle()
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get PreferredSize => (
    SizeUtils.width,
    height ?? 56.v,
  );
  _getStyle(){
    switch (styleType){
      case Style.bgFill_1:
       return Container(
        height: 1.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 60.v),
        decoration: BoxDecoration(
          color: appTheme.blue50,
        ),
       );
       case Style.bgFill:
       return Container(
        height: 1.v,
        width: 369.h,
        margin: EdgeInsets.only(
          left: 6.h, 
          top: 61.v,
        ),
        decoration: BoxDecoration(
          color: appTheme.blue50,
        ),
       );
       default:
       return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgFill,
}