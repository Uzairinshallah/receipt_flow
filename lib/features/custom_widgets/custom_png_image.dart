import 'package:flutter/material.dart';

class GetPngImage extends StatelessWidget {
  final String imagePath;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  final Color? imageCol;
  const GetPngImage({super.key, required this.imagePath, this.width, this.height, this.boxFit, this.imageCol,});

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(imagePath),
      height: height,
      width: width,
      fit: boxFit ?? BoxFit.contain,
      color: imageCol,
    );
  }
}