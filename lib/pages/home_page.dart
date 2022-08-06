import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kFontPrimaryColor,
        ),
        title: Text(
          "VacunApp",
          style: TextStyle(
            color: kFontPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text(
              "Mis carnets registrados",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: kFontPrimaryColor.withOpacity(0.85),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Column(
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
