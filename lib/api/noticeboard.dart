import 'dart:io';
import 'package:geology/constants.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Notice {
  final String title;
  final String description;
  final String imagelink;

  Notice(
      {required this.title,
      required this.description,
      required this.imagelink});
}

class NoticeBoardScreen extends StatelessWidget {
  static String routeName = 'NoticeBoardScreen';
  final CollectionReference noticesCollection =
      FirebaseFirestore.instance.collection('notices');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice Board'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: noticesCollection.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          List<Notice> notices =
              snapshot.data!.docs.map((QueryDocumentSnapshot doc) {
            return Notice(
              title: doc['title'],
              description: doc['description'],
              imagelink: doc["imagelink"],
            );
          }).toList();

          return ListView.builder(
            itemCount: notices.length,
            itemBuilder: (BuildContext context, int index) {
              Notice notice = notices[index];
              return ListTile(
                title: Text(notice.title),
                subtitle: Text(
                  notice.description,
                  style: TextStyle(fontSize: 16, color: kdipgreencolor),
                ),
                trailing: IconButton(
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NetworkImageDownloader(
                                  imageUrl: notice.imagelink)));
                    },
                    icon: const Icon(
                      Icons.download,
                      color: Colors.white70,
                    )),
              );
            },
          );
        },
      ),
    );
  }
}

class NetworkImageDownloader extends StatefulWidget {
  static String routeName = 'NetworkImageDownloader';
  final String imageUrl;

  NetworkImageDownloader({required this.imageUrl});

  @override
  _NetworkImageDownloaderState createState() => _NetworkImageDownloaderState();
}

class _NetworkImageDownloaderState extends State<NetworkImageDownloader> {
  bool _isLoading = false;
  String _downloadedImagePath = '';

  Future<void> _downloadImage() async {
    setState(() {
      _isLoading = true;
    });

    final response = await http.get(Uri.parse(widget.imageUrl));

    if (response.statusCode == 200) {
      final appDir = await getApplicationDocumentsDirectory();
      final fileName = 'downloaded_image.jpg';
      final filePath = '${appDir.path}/$fileName';

      final File file = File(filePath);
      await file.writeAsBytes(response.bodyBytes);

      setState(() {
        _downloadedImagePath = filePath;
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      throw Exception('Failed to download image');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VIEW I M A G E"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_isLoading)
              CircularProgressIndicator()
            else if (_downloadedImagePath.isNotEmpty)
              Image.file(File(_downloadedImagePath))
            else
              Image.network(widget.imageUrl),
            ElevatedButton(
              onPressed: _downloadImage,
              child: Text('Download Image'),
            ),
          ],
        ),
      ),
    );
  }
}
