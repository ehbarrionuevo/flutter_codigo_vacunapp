import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/pages/home_page.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/button_normal_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Tu carnet de vacunación",
              style: TextStyle(
                fontSize: 44.0,
                fontWeight: FontWeight.w600,
                height: 1,
                color: kFontPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              "Con esta App podrás gestionar los carnets de las personas que prefieras. No olvides ser resposable.",
              style: TextStyle(
                fontSize: 16.0,
                height: 1.4,
                color: kFontPrimaryColor.withOpacity(0.7),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            ButtonNormalWidget(
              text: "Iniciar ahora",
              icon: "virus",
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
