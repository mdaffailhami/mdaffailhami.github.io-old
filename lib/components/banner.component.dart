import 'package:flutter/material.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bannerWidth = MediaQuery.of(context).size.width;
    double bannerHeight = 400.0;
    double profileWidth = bannerWidth / 4;
    double profileHeight = bannerHeight * 0.6;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: bannerWidth,
          height: bannerHeight,
          child: Image(
            image: AssetImage('images/banner.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          color: Colors.black45,
          width: bannerWidth,
          height: bannerHeight,
        ),
        Container(
          width: profileWidth,
          height: profileHeight,
          child: Column(children: [
            Container(
              width: profileWidth,
              height: profileHeight * 0.6,
              alignment: Alignment.center,
              child: Container(
                width: profileHeight * 0.6,
                height: profileHeight * 0.6,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('images/profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: profileHeight * 0.05),
            Container(
              width: profileWidth,
              height: profileHeight * 0.35,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Daffa Ilhami',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  Text(
                    'A man who likes Information Technology',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[200],
                    ),
                  ),
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}

// class Banner extends StatelessWidget {
//   const Banner({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double bannerWidth = screenWidth;
    // double bannerHeight = bannerWidth * 0.3;
    // double profileWidth = bannerWidth * 0.25;
    // double profileHeight = bannerHeight * 0.4;

    // return Container(
    //   child: Stack(
    //     children: [
    //       Container(
    //         width: bannerWidth,
    //         height: bannerHeight,
    //         child: Image(
    //           image: AssetImage('images/banner.jpg'),
    //           fit: BoxFit.fill,
    //         ),
    //       ),
    //       Container(
    //         color: Color(0x80000000),
    //         width: bannerWidth,
    //         height: bannerHeight,
    //       ),
    //       Container(
    //         alignment: Alignment.center,
    //         width: bannerWidth,
    //         height: bannerHeight,
    //         child: Container(
    //           color: Colors.white,
    //           width: profileWidth,
    //           height: profileHeight,
    //           child: Column(
    //             children: [
    //               Container(
    //                 width: profileHeight / 2.5,
    //                 height: profileHeight / 2.5,
    //                 child: ClipOval(
    //                   child: Image(
    //                     image: AssetImage('images/profile.jpg'),
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //               ),
    //               Container(
    //                 color: Colors.red,
    //                 // width: profileWidth * 0.7,
    //                 // height: profileHeight * 0.2,
    //                 child: Column(
    //                   children: [
    //                     Text(
    //                       'Daffa Ilhami',
    //                       style: TextStyle(
    //                           fontSize: (screenWidth > 768 ? 50 : 25)),
    //                     )
    //                   ],
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // return Stack(
    //   children: [
    //     const SizedBox(
    //       width: double.infinity,
    //       height: 400,
    //       child:
    //           Image(image: AssetImage('images/banner.jpg'), fit: BoxFit.fill),
    //     ),
    //     Container(
    //       width: double.infinity,
    //       height: 400,
    //       color: Colors.black26,
    //     ),
    //     Container(
    //         width: double.infinity,
    //         height: 400,
    //         alignment: Alignment.center,
    //         child: SizedBox(
    //           width: 175,
    //           height: 175,
    //           child: ClipOval(
    //             child: Image(
    //                 image: AssetImage('images/profile.jpg'), fit: BoxFit.cover),
    //           ),
    //         ))
    //   ],
    // );
//   }
// }
