import 'package:flutter/material.dart';
import 'package:uzum_market/Components/mediaquery.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: m_h(context).toDouble(),
        width: m_w(context).toDouble(),
        child: Column(
          children: [
            SizedBox(
              height: m_w(context)*0.5,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
