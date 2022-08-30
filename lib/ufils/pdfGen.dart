import 'dart:io';

import 'package:createresume/class/modelClass.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

void pdfgen(ModelClass m1) async{
  var pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      orientation: pw.PageOrientation.portrait,
      margin: pw.EdgeInsets.all(10),
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Container(
          alignment: pw.Alignment.center,
          decoration: pw.BoxDecoration(
            border: pw.Border.all(color: PdfColors.black, width: 5),
          ),
          child: pw.Column(
            children: [
              pw.Container(
                height: 200,
                width: 200,
                color: PdfColors.red,
              ),
            ],
          ),
        );
      },
    ),
  );

  Directory? dir = await getExternalStorageDirectory();
  print("============================${dir!.path}");
  File file = File("${dir.path}/flutter.pdf");
  file.writeAsBytes(await pdf.save());
}
