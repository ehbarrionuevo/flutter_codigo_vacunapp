import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/button_normal_widget.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/textfield_normal_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RegisterPage extends StatelessWidget {
  String url;

  RegisterPage({
    required this.url,
  });

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
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Registrar nuevo carnert",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: kFontPrimaryColor.withOpacity(0.85),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextFieldNormalWidget(
                    hintText: "Nombre completo",
                    icon: 'user',
                    isDNI: false,
                  ),
                  TextFieldNormalWidget(
                    hintText: "DNI",
                    icon: 'id-card',
                    isDNI: true,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Carnet QR",
                    style: TextStyle(
                        color: kFontPrimaryColor.withOpacity(0.75),
                        fontSize: 15.0),
                  ),
                  QrImage(
                    data: url,
                    version: QrVersions.auto,
                    size: 220.0,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonNormalWidget(
                text: "Registrar carnet",
                icon: 'check',
                onTap: (){

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
