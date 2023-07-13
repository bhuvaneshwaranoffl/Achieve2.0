import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesEngOne extends StatefulWidget {
  const QuesEngOne({super.key});

  @override
  State<QuesEngOne> createState() => _QuesEngOneState();
}

class _QuesEngOneState extends State<QuesEngOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.deepPurple,
        title: Text(
          "Choose Pdf",
          style: GoogleFonts.dmSerifDisplay(textStyle: TextStyle(fontSize: 29)),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_to_drive_outlined,
          size: 33,
        ),
      ),
    );
  }
}


// import 'dart:async';
// import 'dart:io';
// import 'package:achieveapp/colors.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class QuesEngOne extends StatefulWidget {
//   const QuesEngOne({Key? key}) : super(key: key);
//
//   @override
//   State<QuesEngOne> createState() => _QuesEngOneState();
// }
//
// class _QuesEngOneState extends State<QuesEngOne> {
//   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
//   List<Map<String, dynamic>> pdfData = [];
//
//   Future<String?> uploadPdf(String filename,File file) async {
//     final reference = FirebaseStorage.instance.ref().child("pdfs/$filename.pdf");
//     final uploadTask = reference.putFile(file);
//
//     await uploadTask.whenComplete(() {});
//
//     final downloadLink = await reference.getDownloadURL();
//
//     return downloadLink;
//   }
//
//   void pickFile() async {
//     final pickedFile = await FilePicker.platform
//         .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
//
//     if (pickedFile != null) {
//       String filename = pickedFile.files[0].name;
//       File file = File(pickedFile.files[0].path!);
//       final downloadLink = uploadPdf(filename, file);
//
//       _firebaseFirestore.collection("pdfs").add({
//         "name": filename,
//         "url": downloadLink,
//
//       });
//
//
//     }
//   }
//
//   void getAllpdf() async {
//     final results = await _firebaseFirestore.collection("pdfs").get();
//
//     pdfData = results.docs.map((e) => e.data()).toList();
//
//     setState(() {});
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getAllpdf();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         title: Text(
//           "Choose pdf",
//           style: GoogleFonts.dmSerifDisplay(
//               textStyle: TextStyle(color: Colors.black, fontSize: 30)),
//         ),
//       ),
//       body: GridView.builder(
//           itemCount: pdfData.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//           itemBuilder:(context,index){
//          return Padding(padding: const EdgeInsets.all(8.0),
//          child: InkWell(
//            onTap: (){
//           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PdfViewerScreen(pdfUrl: pdfData[index]["url"],)));
//            },
//            child: Container(
//              decoration: BoxDecoration(
//                color: mcgpalette0,
//                border: Border.all(),
//              ),
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: [
//                  Image.asset("lib/images/BME.png",
//                  height: 120,
//                    width: 100,
//                  ),
//                  Text(
//                      pdfData[index]["name"],
//                    style: GoogleFonts.dmSerifDisplay(textStyle: TextStyle(fontSize:30,color: Colors.white )),
//                  )
//                ],
//              ),
//            ),
//          ),
//          );
//       }),
//       floatingActionButton: FloatingActionButton(
//         onPressed: pickFile,
//         child: Icon(
//           Icons.upload_file_rounded,
//           size: 30,
//         ),
//       ),
//     );
//   }
// }
//
//
// class PdfViewerScreen extends StatefulWidget {
//   final String pdfUrl;
//   const PdfViewerScreen({Key? key, required this.pdfUrl}) : super(key: key);
//
//   @override
//   State<PdfViewerScreen> createState() => _PdfViewerScreenState();
// }
//
// class _PdfViewerScreenState extends State<PdfViewerScreen> {
//   PDFDocument? document;
//
//   void initialisePDF() async {
//     document = await PDFDocument.fromURL(widget.pdfUrl);
//     setState(() {});
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     initialisePDF();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: document != null
//             ? PDFViewer(
//                 document: document!,
//               )
//             : Center(
//                 child: CircularProgressIndicator(
//                   color: Colors.deepPurple,
//                 ),
//               ));
//   }
// }
//
