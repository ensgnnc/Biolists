// ignore_for_file: camel_case_types, must_be_immutable, file_names
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class customButtonWidget extends StatefulWidget {
  String ecoName;

  //? Container height and width variable
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
    //? Ecosystem name for print on popup widget
    String ecoName = widget.ecoName;

    //? Get rid of Turkish characters for assets name
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
//? Widget that returns about info for given ecosystem
class returnAbout extends StatelessWidget {
  const returnAbout({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text((() {
      if (name == "gol") {
        return "Göl ve bataklık ekosistemleri genel olarak tatlı sulardan meydana gelmektedir. Göller, tatlı yüzey sularının %87’sini oluşturur. Sularının sıcaklığı ve seviyesi mevsimden mevsime değişen göller; çevredeki ana materyalden çözünerek sulara karışan maddenin özelliğine göre tuzlu, acı ve sodalı olabilmektedir.";
      } else if (name == "cayir") {
        return "";
      } else if (name == "col") {
        return "Dünya nüfusunun yalnızca % 5’i çöl ekosisteminde yaşamaktadır. Çöllerdeki insanların büyük çoğunluğu göçebe bir yaşam sürer. Çöllerdeki akarsuların çoğu, çölün dışındaki dağlık alanlardan kaynaklanır. Bu akarsulardan, tarım alanlarının sulanmasında yararlanılır; çöllerde kurulu kentler de genellikle bu akarsuların yakınında kurulur ve gelişir. Çöllerdeki yeraltı suları, genellikle, yüzyıllar boyunca toprak altına sızan suların toplanmasıyla oluşur. Kimi zaman bu yeraltı suları, bir yerde yeryüzüne çıkacak bir yol bulur ve böylece vahalar oluşur.";
      } else if (name == "deniz") {
        return "Deniz ekosistemleri, içinde yüksek oranda tuz bulunan su ekosistemleridir. Gezegendeki tüm ekosistem türlerinden en yaygını olan deniz. Deniz yaşamı söz konusu olduğunda kumsallar, diğer ekosistemlere kıyasla cansız gibi görünebilir. Bununla birlikte bu ekosistemlerin şaşırtıcı derecede biyolojik çeşitliliği vardır.";
      } else if (name == "magara") {
        return "Mağaralar karanlık, yüksek nem ve düşük sıcaklık gibi özelliklerinden dolayı çevremizde gördüğümüz diğer ekosistemlerden farklı özellikler taşırlar. Kırılgan ve hassas ekosistemler oldukları için, dışarıdan gelebilecek en ufak etkiler bile geri dönüşü olmayan hasarlara neden olabilir.";
      } else if (name == "nehir") {
        return "";
      } else if (name == "okayanus") {
        return "";
      } else if (name == "orman") {
        return "";
      }

      return "BUG";
    })());
  }
}

//? Widget that returns creature info for given ecosystem
class returnCreatures extends StatelessWidget {
  const returnCreatures({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text((() {
      if (name == "gol") {
        return "Organik maddenin fazla olduğu gölün kıyı kesimi, canlı yaşamı açısından oldukça zengin bir alan hâline gelmiştir. Göl ekosisteminde yaşayan başlıca canlılar; saz, kamış, nilüfer gibi sucul bitkilerin yanı sıra algler, kurbağa, su yılanı, sazan ve karabataktır.";
      } else if (name == "cayir") {
        return "";
      } else if (name == "col") {
        return "Addaks Antilopları  Sahra Çitaları Tek Hörgüçlü Develer Dorkas Ceylanları Çöl Tilkileri Ölümcül Akrepler  Gübre Böcekleri Kuyruksürengiller Altın çakal  Deve kuşu Gila canavarı Boynuzlu Engerekler Puma Afrika Vahşi Köpekleri";
      } else if (name == "deniz") {
        return "Mercan resifi ekosistemlerinde yüzlerce mercan türlü, yengeç, karides, ıstakozlar, anemonlar, solucanlar, bryozoanlar, denizyıldızları, denizkestaneleri, ahtapotlar, kalamar gibi omurgasız canlılar, çeşitli balıklar, deniz kaplumbağaları, foklar ve yunuslar gibi omurgalı deniz memelileri bulunur.";
      } else if (name == "magara") {
        return "Trogloksen canlılara yarasa, ayı ve bazı kuş ve fare türleri örnek verilebilir. Örneği yarasalar gündüzleri mağara içerisinde yaşamaktadır ve geceleri beslenmek için mağara dışına çıkarlar. Ayılar ise barınmak için mağaraları kullanabilirler. Troglofil canlılara ise örümcek, böcek veya amfibiler örnek verilebilir.";
      } else if (name == "nehir") {
        return "";
      } else if (name == "okayanus") {
        return "";
      } else if (name == "orman") {
        return "";
      }

      return "BUG";
    })());
  }
}

//? Widget that returns climate info for given ecosystem
class returnClimate extends StatelessWidget {
  const returnClimate({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text((() {
      if (name == "gol") {
        return "Hipo-limnion ağır derin sudan oluşur ve ışık almayan parçalanma tabakasına aittir. Burada suyun sıcaklığı +4°C’nin biraz üstündedir. Suyun yoğunluğu da en yüksektir. Bu ta­bakayı da derin zemindeki PROFUNDAL izler, bu da parçalanma tabakasına dahildir.";
      } else if (name == "cayir") {
        return "";
      } else if (name == "col") {
        return "Havada bulut olmaması, geceleri de ısının hemen gökyüzüne yükselmesine ve havanın hemen soğumasına neden olur. Çok az yağmur yağmasına karşın, geceleri havanın çok çabuk soğumasına bağlı olarak sis oluşur ve çığ düşer. Çok kısa süren yağışlı mevsimde kısa ömürlü tek yıllık bitkiler yaşar.";
      } else if (name == "deniz") {
        return "Deniz ekosistemleri Dünya'nın birçok farklı yerinde bulunur, bu nedenle deniz iklimlerinin tropikalden kutuplara değişebileceğini öğrenmek şaşırtıcı olmamalıdır. Deniz ekosistemlerinde bulunan diğer iklimler arasında muson, subtropikal, ılıman ve subpolar bulunmaktadır";
      } else if (name == "magara") {
        return "Genel olarak mağaraların ortalama sıcaklığı 12-17 °C ler arasındadır. Ancak bazen bunun altında veya üstünde değerler bulunabilir. Sıcaklığı 17 °C den yüksek mağaralara sıcak mağara, 11-17 °C arasında ılıman, 11 °C den düşük olanlar ise soğuk mağara olarak tanımlanır.";
      } else if (name == "nehir") {
        return "";
      } else if (name == "okayanus") {
        return "";
      } else if (name == "orman") {
        return "";
      }

      return "BUG";
    })());
  }
}
