import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/shared_services.dart';

import 'login page.dart';
import 'main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
        childWidget: SizedBox(
          height: 250,
          width: 100,
          child: Image.asset("assets/Image/img_1.png"), // Adjust the asset path
        ),
        duration: const Duration(milliseconds: 1500),
        animationDuration: const Duration(milliseconds: 1500),
        onAnimationEnd: () => debugPrint("On Scale End"),
        nextScreen: FutureBuilder(
          future: SharedService.isLoggedIn(),
          builder: (context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!) {
                return  MyApp();
              } else {
                return LoginPage();
              }
            }
            return Container();
          },
        ),
      ),
    );
  }
}

