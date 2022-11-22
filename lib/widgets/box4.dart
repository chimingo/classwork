import 'package:flutter/material.dart';
import 'package:pizza_classwork/widgets/button_widget.dart';

import '../helper/boxpicture_helper.dart';
import '../helper/boxtext_help.dart';

class Box4 extends StatefulWidget {
  const Box4({super.key});

  @override
  State<Box4> createState() => _Box4State();
}

class _Box4State extends State<Box4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      clipBehavior: Clip.none,
      child: Stack(
        children: [
          Container(),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            height: 200,
            width: 160,
            decoration: const BoxDecoration(
                color: Color.fromARGB(234, 233, 230, 223),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BigText(bigText: 'Mexican Green Wave'),
                  Expanded(
                    child: Row(
                      children: const [
                        SmallText(smallText: '⚡️\n\n'),
                        SmallText(
                            smallText:
                                'A pizza loaded with \ncrunchy onions, crisp \ncapsicum, juicy tomatoes'),
                      ],
                    ),
                  ),
                  const BigText(bigText: '﹩23'),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 160,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: const Color.fromARGB(255, 224, 224, 224),
              child: Container(
                  clipBehavior: Clip.none,
                  child: const PizzaImage(nameImage: 'image 16.png')),
            ),
          ),
          ButtonWidget(
              buttonheight: 40,
              buttonMarginT: 205,
              buttonMarginL: 40,
              buttonMarginR: 40,
              buttonText: 'Order Now',
              onTap: () {},
              borderRadius: 30)
        ],
      ),
    );
  }
}
