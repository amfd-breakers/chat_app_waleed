import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Theme.of(context).primaryColor));
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor,
                ],
              ),
            ),
          ),
          Image.asset('assets/images/message_icon.png'),
        ],
      ),
    );
  }
}
