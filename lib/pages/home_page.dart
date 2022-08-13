import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/db/db_admin.dart';
import 'package:flutter_codigo_vacunapp/models/license_model.dart';
import 'package:flutter_codigo_vacunapp/pages/scanner_qr_page.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/button_normal_widget.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/item_list_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<LicenseModel> licenses = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async{
    licenses = await DBAdmin.db.getLicences();
    setState((){});
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mis carnets registrados",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    color: kFontPrimaryColor.withOpacity(0.85),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async{
                      getData();
                    },
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: licenses.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ItemListWidget(
                          model: licenses[index],
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonNormalWidget(
                text: "Escanear QR",
                icon: 'qr',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ScannerQRPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
