import 'package:flutter/material.dart';

import 'package:virtual/core/app_export.dart';

class CustomRatingBar extends StatelessWidget {
  CustomRatingBar({
    Key? key,
    this.alignment,
    this.ignoreGestures,
    this.intialRating,
    this.itemSize,
    this.itemCount,
    this.color,
    this.unselectedColor,
    this.onRatingUpdate,
  }) : super(
          key: key,
        );

  final Alignment? alignment;
  final bool? ignoreGestures;
  final double? intialRating;
  final double? itemSize;
  final int? itemCount;
  final Color? color;
  final Color? unselectedColor;
  Function(double)? onRatingUpdate;

    @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: ratingBarWidget,
          )
        : ratingBarWidget;
  }

   Widget get ratingBarWidget => RatingBar.builder(
     ignoreGestures: ignoreGestures ?? false,
    intialRating: intialRating ?? 0,
    minRating: 0,
    direction:Axis.horizontal,
    allowHalfRating: false,
    itemSize: itemSize ?? 12.v,
    unratedColor: unselectedColor ?? appTheme.blue50,
    itemCount: itemCount ?? 5,
    updatedOnDrag: true,
    itemBuilder : (
      context,
      _,
    ) {
      return Icon(
        Icons.start,
        color: color ?? appTheme.yellow700,
      );
    },
    onRatingUpdate: (rating)  {
      onRatingUpdate!.call(rating);
    },
   
   );
}
