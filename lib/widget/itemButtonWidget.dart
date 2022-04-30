// ignore_for_file: camel_case_types, must_be_immutable, file_names
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class customButtonWidget extends StatefulWidget {
  String ecoName;

  //* Container height and width variable
  double containerHeight;
  double containerWidth;

  customButtonWidget(
      {Key? key,
      required this.containerHeight,
      required this.containerWidth,
      required this.ecoName})
      : super(key: key);

  @override
  State<customButtonWidget> createState() => _customButtonWidgetState();
}

class _customButtonWidgetState extends State<customButtonWidget> {
  @override
  Widget build(BuildContext context) {
    //* Ecosystem name for print on popup widget
    String ecoName = widget.ecoName;

    //* Get rid of Turkish characters for assets name
    String imageName = ecoName.toLowerCase();
    String _imageName = imageName.replaceAll("ç", "c");
    String __imageName = _imageName.replaceAll("ö", "o");
    String ___imageName = __imageName.replaceAll("ğ", "g");
    String ____imageName = ___imageName.replaceAll("ı", "i");

    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            child: SizedBox(
              child: Ink(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          ExactAssetImage("assets/images/$____imageName.png"),
                      fit: BoxFit.cover),
                ),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: SimpleDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                          backgroundColor: const Color(0xFF111111),
                          title: Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              "$ecoName Ekosistemi",
                              style: GoogleFonts.syne(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          titleTextStyle: const TextStyle(
                              color: Color.fromARGB(
                                255,
                                189,
                                188,
                                188,
                              ),
                              fontSize: 20),
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Container(
                                margin: const EdgeInsets.only(
                                    right: 20, left: 20, bottom: 4),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Genel Bilgiler",
                                        style: GoogleFonts.syne(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    returnAbout(name: ____imageName)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  splashColor: Colors.white70,
                ),
              ),
            ),
            height: widget.containerHeight,
            width: widget.containerWidth,
          ),
          Text(
            "$ecoName Ekosistemi",
            style: const TextStyle(color: Color(0xFFA8A8A8)),
          )
        ],
      ),
    );
  }
}

//These codes are trash code i will fix that ASAP.
//TODO: Fix that
//TODO: Add popup informations
//* Widget that returns about info for given ecosystem
class returnAbout extends StatelessWidget {
  const returnAbout({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text((() {
      if (name == "gol") {
        return "Göl ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "cayir") {
        return "Çayır ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "col") {
        return "Çöl ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "deniz") {
        return "Deniz ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "magara") {
        return "Magara ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "nehir") {
        return "Nehir ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "okayanus") {
        return "Okyanus ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "orman") {
        return "Orman ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      }

      return "BUG";
    })());
  }
}

//* Widget that returns creature info for given ecosystem
class returnCreatures extends StatelessWidget {
  const returnCreatures({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text((() {
      if (name == "gol") {
        return "Ördek";
      } else if (name == "cayir") {
        return "Çayır ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "col") {
        return "Çöl ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "deniz") {
        return "Deniz ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "magara") {
        return "Magara ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "nehir") {
        return "Nehir ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "okayanus") {
        return "Okyanus ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "orman") {
        return "Orman ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      }

      return "BUG";
    })());
  }
}

//* Widget that returns climate info for given ecosystem
class returnClimate extends StatelessWidget {
  const returnClimate({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text((() {
      if (name == "gol") {
        return "Ördek";
      } else if (name == "cayir") {
        return "Çayır ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "col") {
        return "Çöl ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "deniz") {
        return "Deniz ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "magara") {
        return "Magara ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "nehir") {
        return "Nehir ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "okayanus") {
        return "Okyanus ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      } else if (name == "orman") {
        return "Orman ekosisteminin büyüklüğü, bulunduğu yer, derinliği, sıcaklık, tuz miktarı, ışık miktarı ve suyun özelliği burada yaşayan canlı çeşitliliğini değiştirebilir.";
      }

      return "BUG";
    })());
  }
}
