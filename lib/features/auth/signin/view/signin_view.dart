import 'package:flutter/material.dart';
import 'package:movie_app/core/const/background_image.dart';
import 'package:movie_app/core/const/splash_image.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              BackgroundImage.loginBackground),
          fit: BoxFit.cover, 
          )
        ),
        child: Padding(padding: EdgeInsets.only(
          left: 24, 
          right: 24,
          top: 100,
          bottom: 20, 
        ),
        child: Column(
          children: [
            Image.asset(SplashImage.splashImage,
            width: 160,
            )
          ],
        ),
        ),
      ),
    );
  }
}