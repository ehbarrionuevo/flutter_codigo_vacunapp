import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/models/license_model.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemListWidget extends StatelessWidget {
  LicenseModel model;

  ItemListWidget({
    required this.model,
  });

  showDetailLicense(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Detalle del carnet",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
              ),
              Divider(
                indent: 12.0,
                endIndent: 12.0,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/user.svg',
                    height: 14.0,
                    color: kFontPrimaryColor.withOpacity(0.75),
                  ),
                  const SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    "Nombre completo",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: kFontPrimaryColor.withOpacity(0.75),
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              Text(
                "Elvis Barrionuevo",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: kFontPrimaryColor.withOpacity(0.90),
                  fontSize: 14.0,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/user.svg',
                    height: 14.0,
                    color: kFontPrimaryColor.withOpacity(0.75),
                  ),
                  const SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    "Número de DNI",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: kFontPrimaryColor.withOpacity(0.75),
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              Text(
                "123213213",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: kFontPrimaryColor.withOpacity(0.90),
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/user.svg',
                      height: 14.0,
                      color: kFontPrimaryColor.withOpacity(0.7),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Nombre completo",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: kFontPrimaryColor.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                Text(
                  model.name,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: kFontPrimaryColor.withOpacity(0.90),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/id-card.svg',
                      height: 14.0,
                      color: kFontPrimaryColor.withOpacity(0.7),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "DNI",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: kFontPrimaryColor.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                Text(
                  model.dni,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: kFontPrimaryColor.withOpacity(0.90),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              showDetailLicense(context);
            },
            icon: SvgPicture.asset(
              'assets/icons/link.svg',
              color: kFontPrimaryColor.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }
}
