

import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
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
                  "Fiorella de Fátima Montes",
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
                  "42322211",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: kFontPrimaryColor.withOpacity(0.90),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
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
