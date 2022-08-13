import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/db/db_admin.dart';
import 'package:flutter_codigo_vacunapp/models/license_model.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/button_normal_widget.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/textfield_normal_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RegisterPage extends StatelessWidget {

  String url;

  RegisterPage({
    required this.url,
  });

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _dniController = TextEditingController();


  registerLicense(BuildContext context){

    if(_formKey.currentState!.validate()){
      //

    }

    // LicenseModel license = LicenseModel(
    //   name: _fullNameController.text,
    //   dni: _dniController.text,
    //   url: url,
    // );
    // DBAdmin.db.insertLicense(license).then(
    //       (value) {
    //     if (value > 0) {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(
    //           backgroundColor: const Color(0xff06d6a0),
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(14.0),
    //           ),
    //           behavior: SnackBarBehavior.floating,
    //           content: Row(
    //             children: const [
    //               Icon(
    //                 Icons.check,
    //                 color: Colors.white,
    //               ),
    //               SizedBox(
    //                 width: 10,
    //               ),
    //               Text(
    //                 "El carnet se registró correctamente.",
    //               ),
    //             ],
    //           ),
    //         ),
    //       );
    //     }
    //   },
    // );
  }


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
              child: Form(
                key: _formKey,
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
                      controller: _fullNameController,
                    ),
                    TextFieldNormalWidget(
                      hintText: "DNI",
                      icon: 'id-card',
                      isDNI: true,
                      controller: _dniController,
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
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonNormalWidget(
                text: "Registrar carnet",
                icon: 'check',
                onTap: () {
                  registerLicense(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
