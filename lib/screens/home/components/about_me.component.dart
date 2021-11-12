import 'package:flutter/material.dart';
import 'package:mdaffailhami/constants.dart';

class AboutMeComponent extends StatelessWidget {
  const AboutMeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: Constants.maxBodyWidth,
        padding: EdgeInsets.only(top: 80, bottom: 10),
        decoration: BoxDecoration(
          color: Constants.color2,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(300),
            bottomRight: Radius.circular(300),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 300,
            child: SelectableText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla feugiat commodo iaculis. Praesent placerat nibh a venenatis malesuada. Nulla facilisi. Cras scelerisque dignissim dolor id venenatis. Ut molestie vitae arcu.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

// class AboutMeComponent extends StatelessWidget {
//   const AboutMeComponent({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: Constants.maxBodyWidth,
//       height: 200,
//       // constraints: BoxConstraints(maxWidth: ),
//       decoration: BoxDecoration(
//         color: Constants.color2,
//         borderRadius: const BorderRadius.only(
//           bottomLeft: Radius.circular(300),
//           bottomRight: Radius.circular(300),
//         ),
//       ),
//       child: Column(
//         children: [
//           const Spacer(flex: 1),
//           Expanded(
//             child: SizedBox(
//               width: 300,
//               child: Column(
//                 children: [
//                   SelectableText(
//                     'Perkenalkan namaku Muhammad Daffa Ilhami, aku adalah seorang Programmer aowkwkwk',
//                     textAlign: TextAlign.center,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(Icons.home_filled)),
//                       IconButton(
//                           onPressed: () {}, icon: const Icon(Icons.home)),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
