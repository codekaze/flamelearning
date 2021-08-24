import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read'),
      ),
      body: SfPdfViewer.network(
          'http://www.africau.edu/images/default/sample.pdf'),
    );
  }
}
