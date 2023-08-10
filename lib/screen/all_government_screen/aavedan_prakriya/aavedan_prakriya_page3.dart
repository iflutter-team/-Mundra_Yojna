import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/aavedan_prakriya/aavedan_prakriya_page4.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class AavedanPrakriyaPage3 extends StatelessWidget {
  const AavedanPrakriyaPage3({super.key});

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
          onPressed: () => Get.to(() => const AavedanPrakriyaPage4()),
        ),
      ),
      body: aavedanPrakriyaPage3Body(),
    );
  }
}

Widget aavedanPrakriyaPage3Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
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
              "आवेदन प्राप्ति की अंतिम तिथि के पश्चात् आवेदकों की अनंतिम सूची, पोर्टल / ऐप पर प्रदर्शित की जायेगी, जिसका प्रिंट आउट ग्राम पंचायत / वार्ड स्तर सूचना पटल पर भी चस्पा किया जाएगे।",
              Colors.deepOrange,
              title: "अनंतिम सूची का प्रकाशन"),
          verticalSizeBox(12),
          cardAllCommon(
              "प्रदर्शित अनंतिम सूची पर 15 दिवस तक आपत्तियाँ पोर्टल / ऐप के माध्यम से प्राप्त की जायेगी। इसके अतिरिक्त पंचायत सचिव/ वार्ड प्रभारी को लिखित अथवा सीएम हेल्पलाईन 181 के माध्यम से भी आपत्ति दी जा सकेगी। प्राप्त आपत्तियों को पंचायत सचिव/ वार्ड प्रभारी द्वारा पोर्टल / ऐप पर दर्ज किया जाएगे।\nजो आपत्तियाँ लिखित (ऑफलाइन) प्राप्त हुयी हैं उनके सम्बंध में अग्रिम कार्यवाही पंजी में संधारित की जाकर ऑनलाइन अपलोड की जायेगी।",
              Colors.deepPurple,
              title: "आपत्तियों को प्राप्त किया जाना"),
          verticalSizeBox(12),
          cardAllCommon(
              "प्रदर्शित अनंतिम सूची पर प्राप्त आपत्तियों का निराकरण आपत्ति निराकरण समिति द्वारा किया जाएगे, जिसका स्वरूप निम्नानुसार होगा\n(क) ग्राम पंचायत क्षेत्र की प्राप्त आपत्तियों के निराकरण हेतु मुख्य कार्यपालन अधिकारी जनपद पंचायत, क्षेत्र का नायब तहसीलदार एवं परियोजना अधिकारी महिला एवं बाल विकास की समिति होगी। \n(ख) नगर परिषद एवं नगर पालिका क्षेत्र की प्राप्त आपत्तियों के निराकरण हेतु तहसीलदार, सीएमओ एवं परियोजना अधिकारी महिला एवं बाल विकास की समिति होगी।\n(ग) नगर निगम क्षेत्र कीप्राप्त आपत्तियों के निराकरण हेतु आयुक्त नगर निगम, परियोजना अधिकारी शहरी विकास अभिकरण एवं जिला कार्यक्रम अधिकारी, महिला एवं बाल विकास की समिति होगी।",
              Colors.purpleAccent,
              title: "आपत्ति निराकरण समिति"),
          verticalSizeBox(12),
          cardAllCommon(
            "आवेदन पर आपत्ति की जॉच एवं निराकरण 15 दिवस में समिति द्वारा किया जाएगे। समिति केवल उन्हीं प्रकरणों पर विचार करेंगी जिसमें आपत्ति प्राप्त हुई हैं। इसके अतिरिक्त प्राप्त आवेदनों का रेंडम चयन राज्य स्तर पर किया जाकर उनकी पात्रता सम्बंधी विशेष जांच की जा सकेगी।\nसमस्त आपत्तियों के समय सीमा में परीक्षण उपरांत पात्र हितग्राहियों की अंतिम सूची आपत्ति निराकरण समिति के स्तर पर मुख्य कार्यपालन अधिकारी, जनपद पंचायत/ सीएमओ, नगरीय निकाय/ आयुक्त, नगर निगम द्वारा स्वीकृत की जाकर पोर्टल / ऐप पर प्रदर्शित की जायेगी। सूची का प्रिंट आउट ग्राम पंचायत/वार्ड स्तर पर भी चस्पा किया जाएगे। अपात्र हितग्राहियों की पृथक सूची भी पोर्टल / ऐप पर प्रदर्शित की जायेगी।",
            Colors.blueGrey,
            title: "आपत्तियों की जॉच एवं अंतिम सूची जारी किया जाना",
          ),
          verticalSizeBox(50),
        ],
      ),
    ),
  );
}
