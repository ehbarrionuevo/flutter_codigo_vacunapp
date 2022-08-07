import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/textfield_normal_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(14.0),
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
              TextFieldNormalWidget(),
              TextFieldNormalWidget(),
              TextFieldNormalWidget(),
              TextFieldNormalWidget(),
              TextFieldNormalWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
