// ignore_for_file: avoid_print

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DemoImagePicker extends StatefulWidget {
  const DemoImagePicker({super.key});

  @override
  State<DemoImagePicker> createState() => _DemoImagePickerState();
}

class _DemoImagePickerState extends State<DemoImagePicker> {
  ImagePicker imagePicker = ImagePicker();
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 700,
              width: 392,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.withOpacity(0.3)),
              child: image == null
                  ? const Icon(Icons.image, size: 60)
                  : Image.file(image!, fit: BoxFit.cover),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 50,
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () async {
                                    if (image == null) {
                                      XFile? file = await imagePicker.pickImage(
                                          source: ImageSource.gallery,
                                          imageQuality: 100);

                                      image = File(file!.path);
                                      print('PATH ${file.path}');
                                      setState(() {});
                                    } else {
                                      image = null;
                                      setState(() {});
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.image,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () async {
                                    if (image == null) {
                                      XFile? file = await imagePicker.pickImage(
                                          source: ImageSource.camera,
                                          imageQuality: 100);

                                      image = File(file!.path);
                                      print('PATH ${file.path}');
                                      setState(() {});
                                    } else {
                                      image = null;
                                      setState(() {});
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.camera_alt,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.add_a_photo, size: 30),
                ),
                const SizedBox(width: 100),
                IconButton(
                  onPressed: () async {
                    image = null;
                    setState(() {});
                  },
                  icon: const Icon(Icons.delete, size: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
