import 'package:flutter/material.dart';
import 'package:mdaffailhami/constants.dart';

class JobCardsComponent extends StatelessWidget {
  const JobCardsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Align(
        alignment: const Alignment(0, -1.15),
        child: SizedBox(
          width: 500,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              JobCardWidget('Web Developer'),
              Spacer(),
              JobCardWidget('Programmer'),
              Spacer(),
              JobCardWidget('Mobile App Developer'),
            ],
          ),
        ),
      ),
    );
  }
}

class JobCardWidget extends StatelessWidget {
  String job = '';
  JobCardWidget(this.job, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            color: Constants.color3,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Constants.color1, width: 2)),
        child: Center(
          child: Text(
            job,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
