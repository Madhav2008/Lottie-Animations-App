// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animation2Screen extends StatefulWidget {
  const Animation2Screen({Key? key}) : super(key: key);

  @override
  State<Animation2Screen> createState() => _Animation2ScreenState();
}

class _Animation2ScreenState extends State<Animation2Screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.network(
        'https://assets3.lottiefiles.com/packages/lf20_jrpzvtqz.json',
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
