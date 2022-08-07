import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
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
              Container(
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
