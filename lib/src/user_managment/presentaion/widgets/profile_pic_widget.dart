import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/colors.dart';

class ProfilePicWidget extends StatefulWidget {
  const ProfilePicWidget({super.key});

  @override
  State<ProfilePicWidget> createState() => _ProfilePicWidgetState();
}

class _ProfilePicWidgetState extends State<ProfilePicWidget> {
  String? imagPath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 141,
      width: 141,
      child: Stack(
        children: [
          if (imagPath == null) Image.asset("assets/profile_pic.png"),
          if (imagPath != null)
            CircleAvatar(
              radius: 141,
              backgroundImage: FileImage(File(imagPath!)),
            ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: appPrimaryColor,
                  border: Border.all(color: Colors.white)),
              child: IconButton(
                onPressed: () async {
                  await getImage();
                },
                icon: const Icon(Icons.camera_alt_outlined),
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  final ImagePicker _picker = ImagePicker();

  Future<void> getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      return;
    }
    if (image.path.isNotEmpty) {
      imagPath = image.path;
      setState(() {});
    } else {
      print(image.toString());
    }
  }
}
