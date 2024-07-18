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
                backgroundColor: Color.fromARGB(253, 231, 231, 231),
                radius: 80,
                child: CircleAvatar(
                  backgroundImage: AssetImage(AppImages.img11),
                  radius: 75,
                ),
              )
          ),
    );
  }
}
