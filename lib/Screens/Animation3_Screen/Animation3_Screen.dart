// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animation3Screen extends StatefulWidget {
  const Animation3Screen({Key? key}) : super(key: key);

  @override
  State<Animation3Screen> createState() => _Animation3ScreenState();
}

class _Animation3ScreenState extends State<Animation3Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.network(url),
    );
  }
}
