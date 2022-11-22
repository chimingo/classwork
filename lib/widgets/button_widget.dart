import 'package:flutter/material.dart';
import 'package:pizza_classwork/screens/details_screen.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    required this.buttonText,
    this.textColor,
    this.buttonColor,
    required this.onTap,
    this.buttonMarginL,
    this.buttonMarginR,
    this.buttonMarginT,
    this.buttonMarginB,
    required this.borderRadius,
    this.buttonheight,
    Key? key,
  }) : super(key: key);
  final String buttonText;
  final VoidCallback onTap;
  Color? buttonColor;
  Color? textColor;
  double? buttonMarginL;
  double? buttonMarginR;
  double? buttonMarginT;
  double? buttonMarginB;
  double? borderRadius;
  double? buttonheight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonheight ?? 50,
      decoration: BoxDecoration(
          color: buttonColor ?? const Color.fromARGB(255, 255, 162, 0),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 0))),
      margin: EdgeInsets.only(
          left: buttonMarginL ?? 20,
          right: buttonMarginR ?? 20,
          top: buttonMarginT ?? 0,
          bottom: buttonMarginB ?? 0),
      width: double.infinity,
      child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailsScreen()));
          },
          child: Text(
            buttonText,
            style: TextStyle(color: buttonColor ?? Colors.black),
          )),
    );
  }
}


//     return Container(
//       decoration: const BoxDecoration(
//           color: Color.fromARGB(255, 219, 189, 137),
//           borderRadius:
//               BorderRadius.all(Radius.circular(40.0))),
//       margin: const EdgeInsets.only(left: 20, right: 20),
//       width: double.infinity,
//       child: TextButton(
//           onPressed: () {},
//           child: const Text(
//             'Sign up with Email',
//             style: TextStyle(
//                 color: Color.fromARGB(199, 0, 0, 0)),
//           )),
//     );
//   }
// }
