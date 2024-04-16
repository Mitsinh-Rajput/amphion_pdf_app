import 'package:flutter/material.dart';

import '../../base/custom_image.dart';

class ReferenceScreen extends StatelessWidget {
  const ReferenceScreen({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: InteractiveViewer(
          child: CustomImage(
            path: image,
            fit: BoxFit.fill,
            height: size.height,
            width: size.width,
          ),
        ),
      ),
    );
  }
}
