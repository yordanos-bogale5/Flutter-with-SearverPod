// ignore_for_file: must_be_immutable

import '../models/catagories_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:virtual/widgets/custom_icon_button.dart';
import 'package:virtual/core/app_export.dart';

class CategoriesgridItemWidget extends StatelessWidget {
  CategoriesgridItemWidget(
    this.categoriesgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  CategoriesgridItemModel categoriesgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            imagePath: categoriesgridItemModelObj?.manWorkEquipment,
          ),
        ),
        SizedBox(
          height: 8.v,
        ),
        Text(
          categoriesgridItemModelObj.officeBag!,
          style: CustomTextStyles.labelLargeMediumBluegray300,
        )
      ],
    );
  }
}
