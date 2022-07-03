
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class qrscanner extends StatefulWidget {
  @override
  State<qrscanner> createState() => _qrscannerState();
}

class _qrscannerState extends State<qrscanner> {
final qrkey= GlobalKey(debugLabel:'QR');

QRViewController? controller;

@override
void dispose() {
  controller?.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) =>
      SafeArea(
          child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [
              buildQrView(context),
            ],
          ),
          )
      );

Widget buildQrView(BuildContext context)=>
    QRView(key: qrkey, onQRViewCreated: onQrViewCreated,
    overlay: QrScannerOverlayShape(),);

void onQrViewCreated(QRViewController controller){
  setState(() {
    this.controller = controller;
  });}
}
