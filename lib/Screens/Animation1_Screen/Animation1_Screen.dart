// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animation1Screen extends StatefulWidget {
  const Animation1Screen({Key? key}) : super(key: key);

  @override
  State<Animation1Screen> createState() => _Animation1ScreenState();
}

class _Animation1ScreenState extends State<Animation1Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.network(
          'https://assets3.lottiefiles.com/packages/lf20_jrpzvtqz.json',),
    );
  }
}
