// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animation2Screen extends StatefulWidget {
  const Animation2Screen({Key? key}) : super(key: key);

  @override
  State<Animation2Screen> createState() => _Animation2ScreenState();
}

class _Animation2ScreenState extends State<Animation2Screen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(
        seconds: 2,
      ),
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (liked == false) {
            liked = true;
            _controller.forward();
          } else {
            liked = false;
            _controller.reverse();
          }
        },
        child: Lottie.network(
          'https://assets6.lottiefiles.com/packages/lf20_ylbsrzek.json',
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
          controller: _controller,
        ),
      ),
    );
  }
}
