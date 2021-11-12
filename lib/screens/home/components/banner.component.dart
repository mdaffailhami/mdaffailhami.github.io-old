import 'package:flutter/material.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        BackgroundComponent(),
        ProfileComponent(),
      ],
    );
  }
}

class BackgroundComponent extends StatelessWidget {
  const BackgroundComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/banner.jpg'), fit: BoxFit.fill),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        color: Colors.black45,
      ),
    );
  }
}

class ProfileComponent extends StatelessWidget {
  const ProfileComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Align(
        alignment: Alignment(0, 0.75),
        child: SizedBox(
          width: 300,
          height: 250,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: const [
                    Text(
                      'Daffa Ilhami',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      // maxLines: 1,
                    ),
                    Text(
                      'A man who likes Information Technology',
                      style: TextStyle(color: Colors.grey),
                      // maxLines: 2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
