import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/item_list_widget.dart';
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
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
          ],
        ),
      ),
    );
  }
}
