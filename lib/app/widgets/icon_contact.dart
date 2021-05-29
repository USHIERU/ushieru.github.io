import 'package:flutter/material.dart';
import 'package:ushieru/app/utils/my_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class IconContact extends StatelessWidget {
  final String uriImage;
  final double size;
  final String url;

  const IconContact({
    Key? key,
    required this.size,
    required this.uriImage,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        }
      },
      child: Container(
        padding: EdgeInsets.all(this.size * .05),
        alignment: Alignment.center,
        height: this.size,
        width: this.size,
        child: Container(
          child: Image.asset(
            uriImage,
            filterQuality: FilterQuality.high,
          ),
        ),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(500),
        ),
      ),
    );
  }
}
