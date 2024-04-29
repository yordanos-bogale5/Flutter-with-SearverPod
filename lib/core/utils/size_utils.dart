import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

const num FIGMA_DESIGN_WIDTH = 375;
const num FIGMA_DESIGN_HEIGHT = 812;
const num FIGMA_DESIGN_STATUS_BAR = 0;
typedef ResponsiveBuild = Widget Function(
  BuildContext context,
  Orientation orientation,
  DeviceType deviceType,
);

class Sizer extends StatelessWidget {
  const Sizer({
    Key? key,
    required this.builder,
  }) : super(key: key);

  // this builds the widget whenever the orientation changes
  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}

class SizeUtils {
  //devices box constriants
  static late BoxConstraints boxConstraints;
  //devices orientation
  static late Orientation orientation;
  //type of device this can be mobile or tablet
  static late DeviceType deviceType;
  //devices height
  static late double height;
  //devices width
  static late double width;

  static void setScreenSize(
    BoxConstraints constraints,
    Orientation orientation,
  ) {
    //setting box constraints and orientation
    boxConstraints = constraints;
    orientation = orientation;

    //set screen height and width
    if (orientation == Orientation.portrait) {
      width =
          boxConstraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNonZero();
    }
    deviceType = DeviceType.mobile;
  }
}

// we use this extension becuase of it used to set padding / margin (for top and bottom side)

extension ResponsiveExtension on num {
  //this method used to get device viewport width.
  double get _width => SizeUtils.width;
  //this method used to get device viewport height.
  double get _height => SizeUtils.height;
  // useed to set padding
  double get h => ((this * _width) / FIGMA_DESIGN_WIDTH);
  //HEIGHT OF THE SCREEN ACCORDING TO THE VIEWPORT
  double get v =>
      (this * _height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR);
  // THIS method used to set smallest px in image height and width
  double get adaptSize {
    var height = v;
    var width = h;
    return height < width ? height.toDoubleValue() : width.toDoubleValue();
  }

  //this is used to set text point size according to the viewpoint
  double get fSize => adaptSize;
}

extension FormatExtension on double {
  // return a [double] value with formatted according to provided fractionDigits
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType {mobile , tablet , desktop}
