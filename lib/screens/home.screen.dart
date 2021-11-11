import 'package:flutter/material.dart';
import 'package:mdaffailhami/components/banner.component.dart';
import 'package:mdaffailhami/components/my_projects.component.dart';
import 'package:mdaffailhami/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.color2,
        title: const Text('MDI'),
      ),
      // App Container
      body: Column(
        children: [
          // Banner
          BannerComponent(),
          // Body
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: (screenWidth > Constants.maxAppWidth)
                  ? Constants.maxAppWidth
                  : screenWidth,
              child: Column(
                children: [
                  MyProjectsComponent(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
