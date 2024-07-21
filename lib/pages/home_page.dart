import 'package:flutter/material.dart';
import 'package:uzum_market/Components/Constants.dart';
import 'package:uzum_market/Components/mediaquery.dart';
import 'package:uzum_market/data/repositores/app_repository.dart';
import 'package:uzum_market/pages/pageview_widgets.dart';
import 'package:uzum_market/pages/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: m_w(context) * 0.52,
            child: PageView(
              children: [
                PageViewWidget(image: AppImages.img1),
                PageViewWidget(image: AppImages.img2),
                PageViewWidget(image: AppImages.img3),
                PageViewWidget(image: AppImages.img4),
                PageViewWidget(image: AppImages.img5),
                PageViewWidget(image: AppImages.img6),
                PageViewWidget(image: AppImages.img7),
                PageViewWidget(image: AppImages.img9),
              ],
            ),
          ), //
          SizedBox(height: 10), // PageView
          DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(
                        child: Text('Barakali Juma'),
                      ),
                      Tab(
                        child: Text('Mashhur'),
                      ),
                      Tab(
                        child: Text('Yangi'),
                      ),
                    ],
                  ),
                  Container(
                    height: m_w(context) * 0.85,
                    width: m_w(context).toDouble(),
                    child: TabBarView(
                      children: [
                        GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.5,
                      ),
                      itemBuilder: (context, index)=>ProductWidget(),
                    ),
                        GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.5,
                          ),
                          itemBuilder: (context, index)=>ProductWidget(),
                        ),
                        GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.5,
                          ),
                          itemBuilder: (context, index)=>ProductWidget(),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
