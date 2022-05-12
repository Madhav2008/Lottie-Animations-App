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
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://assets6.lottiefiles.com/private_files/lf30_ll1hdda1.json',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
