import 'package:flutter/material.dart';
import 'package:mdaffailhami/constants.dart';

class MyProjectsComponent extends StatelessWidget {
  const MyProjectsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double myProjectsWidth = Constants.maxAppWidth;

    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.blue)),
                        Expanded(child: Container(color: Colors.red)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.blue)),
                        Expanded(child: Container(color: Colors.red)),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          color: Colors.white,
          width: myProjectsWidth,
          height: 2.0,
        )
      ],
    );
  }
}
