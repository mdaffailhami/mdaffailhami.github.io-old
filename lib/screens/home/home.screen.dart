import 'package:flutter/material.dart';
import 'package:mdaffailhami/constants.dart';
import 'package:mdaffailhami/screens/home/components/about_me.component.dart';
import 'components/banner.component.dart';
import 'components/job_cards.component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.color3,
        title: const Text('MDI'),
      ),
      body: ListView(
        children: [
          const BannerComponent(),
          Stack(
            children: const [
              AboutMeComponent(),
              JobCardsComponent(),
            ],
          ),
          Align(
            alignment: Alignment.center,
            // App Container
            child: SizedBox(
              width: Constants.maxBodyWidth,
              child: Column(
                children: const [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
