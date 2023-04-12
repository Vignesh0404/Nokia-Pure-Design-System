import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SplashScreenMobile extends StatefulWidget {
  const SplashScreenMobile({super.key});

  @override
  State<SplashScreenMobile> createState() => _SplashScreenMobileState();
}

class _SplashScreenMobileState extends State<SplashScreenMobile> {

  @override
  void initState() {
    super.initState();
     Future.delayed(
        const Duration(seconds: 6),
        () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Navigation())
        )
      );
    }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Center(
                child: Image.network('https://www.nokia.com/sites/default/files/styles/scale_1920_no_crop/public/2023-02/nokia-refreshed-logo-1_1.jpg'),
              ),
            ),
        ),
      ),
    );
  }
}