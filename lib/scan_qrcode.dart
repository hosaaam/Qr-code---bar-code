import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanScreen extends StatefulWidget {

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var qrStr =  "Scan qr code";

  Future<void>scanQr()async{
    try{
      FlutterBarcodeScanner.scanBarcode("#2A99CF", "cancel", true, ScanMode.BARCODE).then((value) {
        setState(() {
          qrStr=value;
        });
      });
    }catch(e){
      setState(() {
        qrStr = "error";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan Qr code"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(qrStr),
          MaterialButton(onPressed: ()async{await scanQr();},
          child: Text("Scan"),),

        ],
      ),
    );
  }
}
