import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;
  static double _safeAreaHorizontal = 0;
  static double _safeAreaVertical = 0;
  static double _safeBlockHorizontal = 0;
  static double _safeBlockVertical = 0;

  SizeConfig(BuildContext context) {
    var mediaQueryContext = MediaQuery.of(context);

    screenWidth = mediaQueryContext.size.width;
    screenHeight = mediaQueryContext.size.height;
    _blockSizeHorizontal = screenWidth / 100;
    _blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        mediaQueryContext.padding.left + mediaQueryContext.padding.right;
    _safeAreaVertical =
        mediaQueryContext.padding.top + mediaQueryContext.padding.bottom;
    _safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    _safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }

  static double blockSizeHorizontal(double porcent) {
    return _blockSizeHorizontal * porcent;
  }

  static double blockSizeVertical(double porcent) {
    return _blockSizeVertical * porcent;
  }

  static double safeBlockSizeHorizontal(double porcent) {
    return _safeBlockHorizontal * porcent;
  }

  static double safeBlockSizeVertical(double porcent) {
    return _safeBlockVertical * porcent;
  }
}
