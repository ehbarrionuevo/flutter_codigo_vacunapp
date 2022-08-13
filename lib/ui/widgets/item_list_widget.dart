import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/models/license_model.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
          contentPadding: EdgeInsets.zero,
          content: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    "Detalle del carnet",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
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
                  model.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: kFontPrimaryColor.withOpacity(0.90),
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/id-card.svg',
                      height: 14.0,
                      color: kFontPrimaryColor.withOpacity(0.75),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      "DNI",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: kFontPrimaryColor.withOpacity(0.75),
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  model.dni,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: kFontPrimaryColor.withOpacity(0.90),
                    fontSize: 14.0,
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      launchUrl(Uri.parse(model.url));
                    },
                    child: SizedBox(
                      height: 140,
                      width: 140,
                      child: QrImage(
                        data: model.url,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
