import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code/create_screen.dart';
import 'package:qr_code/scan_qrcode.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hooooooooooooome"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              child: Text("Read Qr Code"),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> ScanScreen()));

              },
             color: Colors.red,
            ),
            MaterialButton(
              child: Text("Create Qr Code"),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> CreateScreen()));
              },
             color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
