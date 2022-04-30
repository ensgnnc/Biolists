// ignore_for_file: file_names, must_be_immutable, avoid_print, unnecessary_new
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:ecolists/widget/itemButtonWidget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.width}) : super(key: key);
  int width;

  @override
  Widget build(BuildContext context) {
    //* Variable to store the middle
    double mid = width.roundToDouble() / 2;

    //* Store popup width and height
    double containerWidth = mid - 30;
    double containerHeight = containerWidth + 20;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 29, 29),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Text(
                          "biolists",
                          style: GoogleFonts.syne(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
//* Left Column
                      Container(
                        margin:
                            const EdgeInsets.only(left: 15, right: 15, top: 40),
                        child: Column(
                          children: [
                            // Orman Ekosistemi
                            customButtonWidget(
                              containerHeight: containerHeight,
                              containerWidth: containerWidth,
                              ecoName: "Orman",
                            ),
                            // Çayır Ekosistemi
                            customButtonWidget(
                              containerHeight: containerHeight,
                              containerWidth: containerWidth,
                              ecoName: "Çayır",
                            ),
                            // Okyanus Ekosistemi
                            customButtonWidget(
                              containerHeight: containerHeight,
                              containerWidth: containerWidth,
                              ecoName: "Okyanus",
                            ),
                            // Göl Ekosistemi
                            customButtonWidget(
                              containerHeight: containerHeight,
                              containerWidth: containerWidth,
                              ecoName: "Göl",
                            ),
                          ],
                        ),
                      ),
//*Right Column
                      Container(
                        margin: const EdgeInsets.only(top: 00),
                        child: Column(
                          children: [
                            // Çöl Ekosistemi
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, top: 40),
                              child: Column(
                                children: [
                                  customButtonWidget(
                                    containerHeight: containerHeight,
                                    containerWidth: containerWidth,
                                    ecoName: "Çöl",
                                  ),
                                  // Mağara Ekosistemi
                                  customButtonWidget(
                                    containerHeight: containerHeight,
                                    containerWidth: containerWidth,
                                    ecoName: "Mağara",
                                  ),
                                  // Deniz Ekosistemi
                                  customButtonWidget(
                                    containerHeight: containerHeight,
                                    containerWidth: containerWidth,
                                    ecoName: "Deniz",
                                  ),
                                  // Nehir Ekosistemi
                                  customButtonWidget(
                                    containerHeight: containerHeight,
                                    containerWidth: containerWidth,
                                    ecoName: "Nehir",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: [
                      Text(
                        "Developed & Designed",
                        style: GoogleFonts.syne(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                      Text(
                        "by Enis Günenç",
                        style: GoogleFonts.syne(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
