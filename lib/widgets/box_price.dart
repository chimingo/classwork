import 'package:flutter/material.dart';
import 'package:pizza_classwork/widgets/button_widget.dart';

import '../helper/boxpicture_helper.dart';
import '../helper/boxtext_help.dart';

class BoxPrice extends StatefulWidget {
  const BoxPrice({super.key});

  @override
  State<BoxPrice> createState() => _BoxPriceState();
}

class _BoxPriceState extends State<BoxPrice> {
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
                  const BigText(bigText: 'Pepperoni Pizza'),
                  Expanded(
                    child: Row(
                      children: const [
                        SmallText(smallText: '⚡️\n\n'),
                        SmallText(
                            smallText:
                                'Pepperoni pizza, Margarita \nPizza Margherita Italian \ncuisine Tomato'),
                      ],
                    ),
                  ),
                  const BigText(bigText: '﹩29'),
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
                  child: const PizzaImage(nameImage: 'pizza1.png')),
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
