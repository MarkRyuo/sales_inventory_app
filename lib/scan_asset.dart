import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';

class ScanAssetTab extends StatelessWidget {
  Future<void> _scanBarcode(BuildContext context) async {
    var result = await BarcodeScanner.scan();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Scan result: ${result.rawContent}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => _scanBarcode(context),
        child: Text('Scan Barcode'),
      ),
    );
  }
}
