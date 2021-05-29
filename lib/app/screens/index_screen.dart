import 'package:flutter/material.dart';
import 'package:ushieru/app/layout/simple_layout.dart';
import 'package:ushieru/app/utils/break_points.dart';
import 'package:ushieru/app/utils/my_colors.dart';
import 'package:ushieru/app/utils/size_config.dart';
import 'package:ushieru/app/widgets/icon_contact.dart';

class IndexScreen extends StatelessWidget {
  static final routeName = "index";

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return SimpleLayout(
      child: LayoutBuilder(
        builder: (context, constraints) {
          var indexesScreenSizes = IndexScreenSizes(
            SizeConfig.blockSizeHorizontal(50),
            SizeConfig.blockSizeHorizontal(12),
            SizeConfig.blockSizeHorizontal(5),
            SizeConfig.blockSizeHorizontal(1.5),
            SizeConfig.blockSizeHorizontal(15),
          );

          if (constraints.maxWidth >= BreakPoints.xxlarge) {
            indexesScreenSizes
              ..imageSize = SizeConfig.blockSizeHorizontal(10)
              ..imUshieru = SizeConfig.blockSizeHorizontal(6)
              ..softwareEngineering = SizeConfig.blockSizeHorizontal(2.5)
              ..likeIronMan = SizeConfig.blockSizeHorizontal(.5)
              ..iconsSize = SizeConfig.blockSizeHorizontal(4);
          } else if (constraints.maxWidth >= BreakPoints.xlarge) {
            indexesScreenSizes
              ..imageSize = SizeConfig.blockSizeHorizontal(14)
              ..imUshieru = SizeConfig.blockSizeHorizontal(8)
              ..softwareEngineering = SizeConfig.blockSizeHorizontal(3)
              ..likeIronMan = SizeConfig.blockSizeHorizontal(.75)
              ..iconsSize = SizeConfig.blockSizeHorizontal(5);
          } else if (constraints.maxWidth >= BreakPoints.large) {
            indexesScreenSizes
              ..imageSize = SizeConfig.blockSizeHorizontal(26)
              ..imUshieru = SizeConfig.blockSizeHorizontal(10)
              ..softwareEngineering = SizeConfig.blockSizeHorizontal(3.5)
              ..likeIronMan = SizeConfig.blockSizeHorizontal(1)
              ..iconsSize = SizeConfig.blockSizeHorizontal(7);
          } else if (constraints.maxWidth >= BreakPoints.medium) {
            indexesScreenSizes
              ..imageSize = SizeConfig.blockSizeHorizontal(38)
              ..imUshieru = SizeConfig.blockSizeHorizontal(11)
              ..softwareEngineering = SizeConfig.blockSizeHorizontal(4.5)
              ..likeIronMan = SizeConfig.blockSizeHorizontal(1.25)
              ..iconsSize = SizeConfig.blockSizeHorizontal(10);
          }

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: indexesScreenSizes.imageSize,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: Image.asset(
                      'lib/app/assets/me.jpg',
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    border: Border.all(color: MyColors.white, width: 8),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical(1)),
                Text(
                  'I\'m Ushieru',
                  style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: indexesScreenSizes.imUshieru,
                  ),
                ),
                Text(
                  'Software Engineering',
                  style: TextStyle(
                    color: MyColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: indexesScreenSizes.softwareEngineering,
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical(1)),
                Text(
                  '(Like Iron Man but... cooler)',
                  style: TextStyle(
                    color: MyColors.white,
                    fontSize: indexesScreenSizes.likeIronMan,
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical(3)),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconContact(
                        uriImage: 'lib/app/assets/github.png',
                        url: 'https://github.com/ushieru',
                        size: indexesScreenSizes.iconsSize,
                      ),
                      IconContact(
                        uriImage: 'lib/app/assets/devto.png',
                        url: 'https://dev.to/ushieru',
                        size: indexesScreenSizes.iconsSize,
                      ),
                      IconContact(
                        uriImage: 'lib/app/assets/googledev.png',
                        url:
                            'https://developers.google.com/profile/u/110578328349513222610',
                        size: indexesScreenSizes.iconsSize,
                      ),
                      IconContact(
                        uriImage: 'lib/app/assets/linkedin.png',
                        url: 'https://www.linkedin.com/in/uzielcocolan/',
                        size: indexesScreenSizes.iconsSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class IndexScreenSizes {
  double imageSize;
  double imUshieru;
  double softwareEngineering;
  double likeIronMan;
  double iconsSize;

  IndexScreenSizes(this.imageSize, this.imUshieru, this.softwareEngineering,
      this.likeIronMan, this.iconsSize);
}
