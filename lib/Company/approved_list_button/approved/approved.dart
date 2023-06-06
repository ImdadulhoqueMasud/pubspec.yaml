import 'package:cse499_project/Company/QR_Code_generate/QR_CODE_GENERATE.dart';
import 'package:flutter/material.dart';

class Approved_Data extends StatelessWidget {
  String itemId, itemDate, itemName, itemWeight, itemPlace;

  Approved_Data(
      {required this.itemId,
      required this.itemDate,
      required this.itemName,
      required this.itemWeight,
      required this.itemPlace});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Compeny",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Item ID: ${itemId}"),
            Text("Item Name: ${itemName}"),
            Text("Item Date: ${itemDate}"),
            Text("Item Weight: ${itemWeight}"),
            Text("Item Place: ${itemPlace}"),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Qr_generate()));
              },
              child: Text('Submit'),
            ),
            // Text("Item Name: ${itemName}"),
          ],
        ),
      ),
    );
  }
}
