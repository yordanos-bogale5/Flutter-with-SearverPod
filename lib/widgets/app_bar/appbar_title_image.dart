import 'package:flutter/material.dart';
import 'package:virtual/core/app_export.dart';

class AppbarTitleImage extends StatelessWidget {
  AppbarTitleImage ({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );


  String? text;

  EdgeInsetsGeometry? margin;

  Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
       child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 24.adaptSize,
          width: 24.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
