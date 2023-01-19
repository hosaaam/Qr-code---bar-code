import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var qrStr =  "564521231";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Qr code"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BarcodeWidget(data: qrStr, barcode: Barcode.codabar(), width: 250,height: 300,),
          Padding(
            padding: const EdgeInsets.all(17),
            child: TextFormField(
              onChanged: (val){
                setState(() {
                  qrStr=val;
                });
              },
              decoration: InputDecoration(
                hintText: "Enter your data",
                border: OutlineInputBorder()
              ),
            ),
          )
        ],
      ),
    );
  }
}
