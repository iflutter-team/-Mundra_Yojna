import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavedan_prakriya/aavedan_prakriya_page5.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class AavedanPrakriyaPage4 extends StatelessWidget {
  const AavedanPrakriyaPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "आगे बढे",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
          minHeight: Get.height * 0.065,
          onPressed: () => const AavedanPrakriyaPage5(),
        ),
      ),
      body: aavedanPrakriyaPage4Body(),
    );
  }
}

Widget aavedanPrakriyaPage4Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSizeBox(10),
          const Text(
            "आवेदन पत्र भरने की सम्पूर्ण प्रक्रिया निःशुल्क होगी। योजना हेतु आवेदन पोर्टल/ मोबाइल ऐप के माध्यम से ऑनलाइन भरे जा सकेंगे।",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          verticalSizeBox(15),
          containerCommon(Colors.deepPurple, "• आवेदन प्रक्रिया •"),
          verticalSizeBox(15),
          cardAllCommon(
            "अंतिम सूची में पात्र हितग्राही को ग्राम सचिव/ वार्ड प्रभारी द्वारा योजना में लाभांवित होने सम्बंधी स्वीकृति पत्र जारी किया जाएगे।",
            Colors.orangeAccent,
            title: "पात्र हितग्राही को स्वीकृति पत्र जारी कियाजाना",
          ),
          verticalSizeBox(12),
          cardAllCommon(
            "पात्र हितग्राही को राशि का भुगतान उनके आधार लिंक्ड डीबीटी इनेबल्ड बैंक खाते में किया जाएगे। आवेदक महिला के पास स्वयं के नाम से आधार लिंक डीबीटी इनेबल्ड बैंक खाता होना चाहिये। आवेदन ऑनलाइन प्रविष्टि के समय उक्त खाता नहीं होने की दशा में महिला हितग्राही को इस सम्बंध में पावती से सूचित किया जाएगे तथा उससे अपेक्षा होगी कि आवेदिका स्वयं का बैंक खाता (आधार लिंक डीबीटी इनेबल्ड) खुलवा लें। इसके लिये जिलों द्वारा नियमित अभियान चलाकर निर्धारित समयसीमा में उक्त कार्यवाही पूर्ण की जायेगी।",
            Colors.brown,
            title: "हितग्राही को राशि का भुगतान",
          ),
          verticalSizeBox(12),
          cardAllCommon(
              "भविष्य में हितग्राही के सम्बंध में कोई आपत्ति प्राप्त होती है तो उसकी जॉच आपत्ति निराकरण समिति द्वारा की जायेगी। जॉच में अपात्र होने की दशा में सम्बंधित हितग्राही का नाम सूची से विलोपन योग्य होने की सूचना उसे दी जाकर अपना पक्ष रखने का अवसर दिया जाएगे। आपत्ति सही पाये जाने पर ग्राम पंचायत सचिव/ वार्ड प्रभारी द्वारा सम्बंधित हितग्राही का नाम विलोपित किया जा सकेगा।",
              Colors.pinkAccent,
              title: "नियमित परीक्षण एवं सत्यापन"),
          verticalSizeBox(12),
          cardAllCommon(
              "योजना के निम्नानुसार अपेक्षित परिणाम प्राप्त होंगे :\n\n1. महिलाओं के आर्थिक सशक्तिकरण के फलस्वरूप वे प्राप्त राशि से स्वयं के पोषण पर विशेष ध्यान दे पायेंगी, जिससे महिलाएं बॉडी मास इन्डेक्स के मानक स्तर पर आ सकेंगी साथ ही महिलाओं में एनीमिया के स्तर में भी सुधार होगा\n\n2. महिलाओं के आर्थिक रूप से मजबूत होने से उन पर आश्रित बच्चों के स्वास्थ्य एवं पोषण स्तर में सुधार\n\n3. महिलाओं की श्रम बल भागीदारी में वृद्धि होगी एवंपरिवार में उनकी निर्णायक भूमिका सुदृढ़ होगी \n\n4. महिलायें अपनी प्राथमिकता के अनुसार व्यय करने हेतु आर्थिक रूप से पहले की अपेक्षा अधिक स्वतंत्र होगीं एवं स्वरोजगार / आजीविका के संसाधनों को विकसित करेंगी।",
              Colors.blueGrey,
              title: "योजना के अपेक्षित परिणाम"),
          verticalSizeBox(50),
        ],
      ),
    ),
  );
}
