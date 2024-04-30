// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:virtual/core/app_export.dart';

class AppbarSubtitleOne extends StatelessWidget {
  AppbarSubtitleOne({
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
        child: Text(
          text,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
      ),
    );
  }
}
