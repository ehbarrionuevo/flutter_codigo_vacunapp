import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_codigo_vacunapp/ui/general/colors.dart';
import 'package:flutter_codigo_vacunapp/ui/widgets/button_normal_widget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerQRPage extends StatefulWidget {
  const ScannerQRPage({Key? key}) : super(key: key);

  @override
  State<ScannerQRPage> createState() => _ScannerQRPageState();
}

class _ScannerQRPageState extends State<ScannerQRPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  // @override
  // void reassemble() {
  //   super.reassemble();
  //   if (Platform.isAndroid) {
  //     controller!.pauseCamera();
  //   }
  //   controller!.resumeCamera();
  //
  // }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 300.0
        : 300.0;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: kBrandPrimaryColor,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 7,
        cutOutSize: scanArea,
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        print("WWWWWWWWWWWWWWWWWWWWWW ${result!.code}");
      });
    });
    controller.pauseCamera();
    controller.resumeCamera();
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            // child: _buildQrView(context),
            child: Container(color: Colors.indigo),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(14.0),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Por favor escanea un carnet",
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ButtonNormalWidget(
                    text: "Registrar Carnet",
                    icon: 'virus',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
