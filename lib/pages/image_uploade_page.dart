import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageUploadePage extends StatefulWidget {
  const ImageUploadePage({super.key});

  @override
  State<ImageUploadePage> createState() => _ImageUploadePageState();
}

class _ImageUploadePageState extends State<ImageUploadePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Image uploading..."),
      ),
    );
  }
}
