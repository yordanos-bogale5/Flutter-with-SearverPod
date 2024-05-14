import 'package:virtual/core/app_export.dart';

class Categoriesgrid1ItemModel {
  Categoriesgrid1ItemModel({
    this.womanTShirtIcon,
    this.tShirt,
    this.id,
  }) {
    womanTShirtIcon = womanTShirtIcon ?? ImageConstant.imgWomanTShirtIcon;
    tShirt = tShirt ?? "T-shirt";
    id = id ?? "";
  }

  String? womanTShirtIcon;
  String? tShirt;
  String? id;
}
