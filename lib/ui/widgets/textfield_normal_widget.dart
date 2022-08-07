

import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldNormalWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(4, 4),
              blurRadius: 12.0),
        ],
      ),
      child: TextField(
        style: TextStyle(
            fontSize: 14.0,
            color: kFontPrimaryColor.withOpacity(0.9)),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Nombre completo",
          hintStyle: TextStyle(
            fontSize: 14.0,
            color: kFontPrimaryColor.withOpacity(0.45),
          ),
          prefixIcon: SvgPicture.asset(
            'assets/icons/user.svg',
            fit: BoxFit.scaleDown,
            color: kFontPrimaryColor.withOpacity(0.45),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 18.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
