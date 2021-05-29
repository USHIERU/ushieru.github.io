import 'package:flutter/material.dart';
import 'package:ushieru/app/utils/my_colors.dart';

class IconContact extends StatelessWidget {
  final String uri;
  final double size;

  const IconContact({
    Key? key,
    required this.uri,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: this.size,
      width: this.size,
      child: Container(
        child: Image.asset(
          uri,
          filterQuality: FilterQuality.high,
        ),
      ),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(500),
      ),
    );
  }
}
