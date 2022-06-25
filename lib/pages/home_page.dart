import 'package:flutter/material.dart';
import 'package:flutter_codigo5_museumapp/helpers/data/data_dummy.dart';
import 'package:flutter_codigo5_museumapp/ui/general/general_widget.dart';

import '../ui/widgets/item_slider_1_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.all(12.0),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       divider20,
    //       const Text(
    //         "Explorar Museos",
    //         style: TextStyle(color: Colors.white, fontSize: 20.0),
    //       ),
    //       divider12,
    //       const Text(
    //         "¿Qué quieres visitar hoy?",
    //         style: TextStyle(color: Colors.white54, fontSize: 14.0),
    //       ),
    //       divider12,
    //       SingleChildScrollView(
    //         physics: const BouncingScrollPhysics(),
    //         scrollDirection: Axis.horizontal,
    //         child: Row(
    //             children: imagesDummy
    //                 .map((e) => ItemSlider1Widget(image: e))
    //                 .toList()),
    //       ),
    //       divider6,
    //       ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //           primary: Colors.blueAccent
    //         ),
    //         onPressed: () {},
    //         child: Container(
    //           margin: const EdgeInsets.symmetric(horizontal: 10.0),
    //           child: const Text(
    //             "Explora +3000 colecciones",
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return Column(
      children: [
        Container(
          height: 180,
          child: PageView(
            controller: PageController(
              viewportFraction: 0.45,
              initialPage: 0,
            ),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padEnds: false,
            pageSnapping: true,
            onPageChanged: (int value) {
              print(value);
            },
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
