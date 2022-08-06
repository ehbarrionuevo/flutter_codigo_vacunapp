import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonNormalWidget extends StatelessWidget {
  String text;
  String icon;
  Function onTap;

  ButtonNormalWidget({
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52.0,
      child: ElevatedButton.icon(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          primary: kBrandPrimaryColor,
        ),
        icon: SvgPicture.asset(
          'assets/icons/$icon.svg',
          color: Colors.white,
        ),
        label: Text(
          text,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
