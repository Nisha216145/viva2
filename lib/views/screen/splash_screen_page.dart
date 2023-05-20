import 'dart:async';
import 'package:flutter/material.dart';
import 'package:exam2/utils/route_utils.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  FlutterLogoStyle myStyle = FlutterLogoStyle.markOnly;

  void changeScreen() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        myStyle = FlutterLogoStyle.horizontal;
      });
    });

    Timer.periodic(
      const Duration(seconds: 6),
          (tick) {
        Navigator.of(context).pushReplacementNamed(MyRoutes.home);
        tick.cancel();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            const Text(
              "Welcome to our Ecommerce App ",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Spacer(),
            CircularProgressIndicator(
              backgroundColor: Colors.red.shade200,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}