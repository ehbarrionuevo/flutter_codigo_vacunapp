
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonNormalWidget extends StatelessWidget {
  const ButtonNormalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52.0,
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          primary: Color(0xff7248E5),
        ),
        icon: SvgPicture.asset(
          'assets/icons/virus.svg',
          color: Colors.white,
        ),
        label: const Text(
          "Iniciar ahora",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
