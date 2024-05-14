// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:virtual/core/app_export.dart';
import 'catagories_grid_item.dart';
import 'catagorized_grid_item1.dart';

// this class defines the variables used in the [explore_page],

class ExploreModel extends Equatable {
  ExploreMode({
    this.categoriesgridItemList = const [],
    this.categoriesgrid1ItemList= const [],
  }) {}

  List<CategoriesgridItemModel> categoriesgridItemList;

  List<Categoriesgrid1ItemModel> categoriesgrid1ItemList;
  
  ExploreModel copyWith({

  List<CategoriesgridItemModel> ? categoriesgridItemList,

  List<Categoriesgrid1ItemModel> ? categoriesgrid1ItemList,
  
  }) {
    return ExploreModel(
      categoriesgridItemList: 
        categoriesgrid1ItemList ?? this.categoriesgrid1ItemList,
      categoriesgrid1ItemList:
          categoriesgrid1ItemList ?? this.categoriesgrid1ItemList,
    );
  }

  @override
  List<Object> get props => [categoriesgrid1ItemList, categoriesgridItemList];
}
