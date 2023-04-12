import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nokia/constants/constants.dart';
import 'views/screens/screens.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.backgroundWhite,
      statusBarColor: AppColors.backgroundWhite,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'NokiaPure'
        ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreenMobile(),
    );
  }
}




//test






