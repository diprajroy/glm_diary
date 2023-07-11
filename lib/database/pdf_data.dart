/*import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class pdfDownload extends StatefulWidget {
  static String routeName = 'pdfDownload';
  const pdfDownload({super.key});

  @override
  State<pdfDownload> createState() => _pdfDownloadState();
}

class _pdfDownloadState extends State<pdfDownload> {
  Future<ListResult> futureFiles =
      FirebaseStorage.instance.ref('/filess').listAll();

  Map<int, double> downloadProgress = {};
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PDF BOOK SECTION")),
      body: FutureBuilder<ListResult>(
        future: futureFiles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final files = snapshot.data!.items;
            return ListView.builder(
                itemCount: files.length,
                itemBuilder: (context, Index) {
                  final file = files[Index];
                  double? progress = downloadProgress[Index];
                  return ListTile(
                    title: Text(file.name),
                    subtitle: progress != null
                        ? LinearProgressIndicator(
                            value: progress,
                            backgroundColor: Colors.white,
                          )
                        : null,
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.download,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        downloadFile(Index, file);
                      },
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Error occurence"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future downloadFile(int Index, Reference ref) async {
    final url = await ref.getDownloadURL();

    final tempDir = await getTemporaryDirectory();
    final String path = '${tempDir.path}/${ref.name}';
    await Dio().download(url, path, onReceiveProgress: (received, total) {
      double progress = received / total;
      setState(() {
        downloadProgress[Index] = progress;
      });
    });
  }
}*/
