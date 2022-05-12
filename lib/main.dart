import 'package:flutter/material.dart';
import 'package:lottie_animations_app/Screens/Navigation_Screen/Navigation_Screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
      ],
       child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipo',
      )
    );
  }
}
