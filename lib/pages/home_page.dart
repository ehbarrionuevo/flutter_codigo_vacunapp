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
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
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
                  Column(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
