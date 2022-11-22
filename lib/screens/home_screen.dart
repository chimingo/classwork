import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pizza_classwork/screens/order_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 234, 230, 223),
        body: Column(
          children: [
            Stack(
              children: [
                Align(
                  child: Container(
                    width: double.infinity,
                    height: 350,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 350,
                  margin: const EdgeInsets.only(top: 55),
                  child: Image.asset(
                    "assets/images/chef.png",
                    alignment: Alignment.center,
                  ),
                ),
                Center(
                  child: Container(
                      height: 120,
                      margin: const EdgeInsets.only(top: 380),
                      child: Image.asset(
                        "assets/images/pizza1.png",
                      )),
                ),
                Positioned(
                    top: 53.9,
                    right: 20.9,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.5,
                              color: Colors.black54),
                        ))),
                Container(
                  margin: const EdgeInsets.only(top: 500),
                  child: Center(
                    child: Column(
                      children: [
                        const Gap(5),
                        const Text(
                          'Pizza for you',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 15.0,
                              ),
                              child: Icon(
                                Icons.bolt,
                                color: Color.fromARGB(255, 246, 180, 76),
                              ),
                            ),
                            Text(
                              'Everyday new pizza \neat fresh pizza',
                            )
                          ],
                        ),
                        const Gap(10),
                        TextButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color(0xffdcbc85)),
                                minimumSize: MaterialStatePropertyAll(
                                    Size(320.0, 50.0))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const OrderScreen()));
                            },
                            child: const Text(
                              "Sign up with Email",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                            )),
                        // ButtonWidget(
                        //     buttonText: 'Sign up with Email',
                        //     onTap: () {},
                        //     borderRadius: 20),
                        const Gap(20),
                        Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 162, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0))),
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          width: double.infinity,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const OrderScreen();
                                }));
                              },
                              child: const Text(
                                'Sign up with Google',
                                style: TextStyle(
                                    color: Color.fromARGB(199, 0, 0, 0),
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
