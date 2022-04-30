// ignore_for_file: file_names, must_be_immutable, avoid_print, unnecessary_new
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:ecolists/widget/itemButtonWidget.dart';

//* flutter build apk --build-name=1.6 --build-number=1

//TODO: Popup information

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.width}) : super(key: key);
  int width;

  @override
  Widget build(BuildContext context) {
    double mid = width.roundToDouble() / 2;

    double containerWidth = mid - 30;
    double containerHeight = containerWidth + 20;

    return Scaffold(
      backgroundColor: const Color(0xFF111111),
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
                          "ecolist",
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
//* Sol Tarafs
                      Container(
                        margin:
                            const EdgeInsets.only(left: 15, right: 15, top: 40),
                        child: Column(
                          children: [
                            //* Orman Ekosistemi
                            customButtonWidget(
                              containerHeight: containerHeight,
                              containerWidth: containerWidth,
                              itemName: "Orman",
                            ),
                            //* Çayır Ekosistemi
                            customButtonWidget(
                              containerHeight: containerHeight,
                              containerWidth: containerWidth,
                              itemName: "Çayır",
                            ),
                            //* Okyanus Ekosistemi
                            customButtonWidget(
                              containerHeight: containerHeight,
                              containerWidth: containerWidth,
                              itemName: "Okyanus",
                            ),
                            //* Göl Ekosistemi
                            customButtonWidget(
                              containerHeight: containerHeight,
                              containerWidth: containerWidth,
                              itemName: "Göl",
                            ),
                          ],
                        ),
                      ),
//*Sağ Taraf
                      Container(
                        margin: const EdgeInsets.only(top: 00),
                        child: Column(
                          children: [
                            //* Çöl Ekosistemi
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 15, right: 15, top: 40),
                              child: Column(
                                children: [
                                  customButtonWidget(
                                    containerHeight: containerHeight,
                                    containerWidth: containerWidth,
                                    itemName: "Çöl",
                                  ),
                                  //* Mağara Ekosistemi
                                  customButtonWidget(
                                    containerHeight: containerHeight,
                                    containerWidth: containerWidth,
                                    itemName: "Mağara",
                                  ),
                                  //* Deniz Ekosistemi
                                  customButtonWidget(
                                    containerHeight: containerHeight,
                                    containerWidth: containerWidth,
                                    itemName: "Deniz",
                                  ),
                                  //* Nehir Ekosistemi
                                  customButtonWidget(
                                    containerHeight: containerHeight,
                                    containerWidth: containerWidth,
                                    itemName: "Nehir",
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
