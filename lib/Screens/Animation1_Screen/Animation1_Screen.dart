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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animation 1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Lottie.network(
          'https://assets3.lottiefiles.com/packages/lf20_puciaact.json',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
        ),
      ),
    );
  }
}
