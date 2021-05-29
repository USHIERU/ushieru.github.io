import 'package:flutter/material.dart';
import 'package:ushieru/app/utils/break_points.dart';
import 'package:ushieru/app/utils/my_colors.dart';
import 'package:ushieru/app/utils/size_config.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var buttonsSize = SizeConfig.blockSizeHorizontal(4);
        var buttonsDividerSize = SizeConfig.blockSizeHorizontal(5);

        if (constraints.maxWidth >= BreakPoints.xxlarge) {
          buttonsSize = SizeConfig.blockSizeHorizontal(2);
          buttonsDividerSize = SizeConfig.blockSizeHorizontal(2);
        } else if (constraints.maxWidth >= BreakPoints.xlarge) {
          buttonsSize = SizeConfig.blockSizeHorizontal(2.5);
          buttonsDividerSize = SizeConfig.blockSizeHorizontal(2.5);
        } else if (constraints.maxWidth >= BreakPoints.large) {
          buttonsSize = SizeConfig.blockSizeHorizontal(3);
          buttonsDividerSize = SizeConfig.blockSizeHorizontal(3);
        } else if (constraints.maxWidth >= BreakPoints.medium) {
          buttonsSize = SizeConfig.blockSizeHorizontal(3.5);
          buttonsDividerSize = SizeConfig.blockSizeHorizontal(3.5);
        }

        return Container(
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.blockSizeVertical(1),
            horizontal: SizeConfig.blockSizeHorizontal(5),
          ),
          width: SizeConfig.screenWidth,
          height: SizeConfig.blockSizeVertical(8),
          child: Row(
            children: [
              Image.asset(
                'lib/app/assets/favicon.png',
                filterQuality: FilterQuality.high,
              ),
              Expanded(child: Container()),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Expertise',
                  style: TextStyle(
                    color: MyColors.white,
                    fontSize: buttonsSize,
                  ),
                ),
              ),
              SizedBox(width: buttonsDividerSize),
              TextButton(
                onPressed: () {},
                child: Text(
                  'About me',
                  style: TextStyle(
                    color: MyColors.white,
                    fontSize: buttonsSize,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
