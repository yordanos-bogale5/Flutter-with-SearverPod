// ignore_for_file: must_be_immutable

import '../models/catagorized_grid_item1.dart';
import 'package:flutter/material.dart';
import 'package:virtual/widgets/custom_icon_button.dart';
import 'package:virtual/core/app_export.dart';

class Categoriesgrid1ItemWidget extends StatelessWidget {
  Categoriesgrid1ItemWidget(
    this.categoriesgrid1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  Categoriesgrid1ItemModel categoriesgrid1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            imagePath: categoriesgrid1ItemModelObj?.womanTShirtIcon,
          ),
        ),
        SizedBox(
          height: 7.v,
        ),
        Text(
          categoriesgrid1ItemModelObj.tShirt!,
          style: CustomTextStyles.labelLargeMediumBluegray300,
        )
      ],
    );
  }
}
