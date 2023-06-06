import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qr_generate extends StatelessWidget {
  Qr_generate({Key? key}) : super(key: key);
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          QrImage(
            data: _controller.text,
            size: 200,
          ),
          Container(
            margin: EdgeInsets.all(20),
            // child: TextField(
            //   controller: _controller,
            //   decoration: InputDecoration(
            //       border: OutlineInputBorder(), labelText: "URL"),
            // ),
          ),
        ],
      ),
    );
  }
}
