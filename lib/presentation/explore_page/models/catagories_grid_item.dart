import 'package:virtual/core/app_export.dart';

class CategoriesgridItemModel {
  CategoriesgridItemModel({
    this.manWorkEquipment,
    this.officeBag,
    this.id,
  }) {
    manWorkEquipment = manWorkEquipment ?? ImageConstant.manWorkEquipment;
    officeBag = officeBag ?? "T-shirt";
    id = id ?? "";
  }

  String? manWorkEquipment;
  String? officeBag;
  String? id;
}
