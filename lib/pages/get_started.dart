import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  List images = [
    "lib/images/get_started.png",
    "lib/images/get_started_2.png",
    "lib/images/get_started_1.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        const SizedBox(
          height: 55,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            aspectRatio: 1,
            viewportFraction: 1,
            autoPlay: true,
          ),
          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Image.asset(i);
              },
            );
          }).toList(),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images
                .map((e) => Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 4.0,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ))
                .toList()),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            "\"Achieve your goals faster and more effectively by tracking your progress and developing habits.\"",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        MaterialButton(
            color: const Color.fromARGB(255, 98, 47, 11),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            onPressed: () {},
            child: const Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 15,
              ),
              child: const Text(
                "GET STARTED",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
      ])),
    );
  }
}
