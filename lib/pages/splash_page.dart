import 'package:flutter/material.dart';
import 'package:uzum_market/Components/Constants.dart';
import 'package:uzum_market/pages/main_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5)).then((value) =>
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => MainPage()), (route) => false));
    return Scaffold(
      body: Center(
          child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 228, 213, 248),
        radius: 105,
        child: CircleAvatar(
          backgroundImage: AssetImage(AppImages.img11),
          radius: 100,
        ),
      )),
    );
  }
}
