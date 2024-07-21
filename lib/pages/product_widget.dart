import 'package:flutter/material.dart';
import 'package:uzum_market/pages/pageview_widgets.dart';
import 'package:uzum_market/pages/splash_page.dart';

import '../Components/Constants.dart';
import '../Components/mediaquery.dart';
import 'package:uzum_market/data/models/product_model.dart';

class ProductWidget extends StatefulWidget {

  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: m_w(context)*0.8.toDouble(),
      width: m_w(context)*0.47,
      child: Column(
        children: [
          Container(
            height: m_w(context)*0.52.toDouble(),
            width: m_w(context)*0.552,
            child: PageView(
              children: [
                PageViewWidget(image: AppImages.img11),
                PageViewWidget(image: AppImages.img11),
              ],
            ),
          ),
          SizedBox(height: 5),
          Text('Buyerda sizning mahsulotingiz nomi'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('2.0000'),
                  Text('2.0000'),
                ],
              ),
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(
                    child: Icon(Icons.add_shopping_cart),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
