import 'package:flutter/material.dart';
import 'package:virtual/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: " lbl_home ".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavExplore,
      activeIcon: ImageConstant.imgNavExplore,
      title: " lbl_explore ".tr,
      type: BottomBarEnum.Explore,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCartBlueGray300,
      activeIcon: ImageConstant.imgNavCartBlueGray300,
      title: " lbl_cart ".tr,
      type: BottomBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavOfferBlueGray300,
      activeIcon: ImageConstant.imgNavOfferBlueGray300,
      title: " lbl_offer ".tr,
      type: BottomBarEnum.offer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAccount,
      activeIcon: ImageConstant.imgNavAccount,
      title: " lbl_account ".tr,
      type: BottomBarEnum.Account,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column (
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          width: double.maxFinite,
          child: Divider(),
        ),
        Container(
          height: 66.v,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 0,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) ){
              return BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  childern: [
                    CustomImageView(
                        imagePath: bottomMenuList[index].icon,
          height: 23.v,
          width: 24.h,
          color: appTheme.blueGray300,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Text (
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.bodySmall10.copyWith(
                          color: appTheme.blueGray300,
                        ),
                      ),
                    ),
                  ],

                ),
                activeIcon: Column(
                   mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  childern: [
                    CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
          height: 23.v,
          width: 24.h,
          color: theme.colorScheme.primary.withOpacity(1),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text (
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.labelMediumPrimary.copyWith(
                          color: theme.colorScheme.primary.withOpacity(1),
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              );
            }),
            onTap: (index) {
              selectedIndex = index;
              widget.onChanged?.call(bottomMenuList[index].type);
              setState(() {});
            },
),
    ],
    );
  }
}

enum BottomBarEnum {
  Home,
  Explore,
  Cart,
  Offer
  Account,
}

class BottomMenuMode {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;
  String activeIcon;
  String? title;
  BottomBarEnum type;

}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color(0xffffffff),
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'replace the respective widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
