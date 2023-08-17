import 'package:flutter/material.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/all_government_screen/all_yojna_page1.dart';
import 'package:mudra_yojana/screen/home_screen/home_page_widget.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/mudra_yojna_page.dart';
import 'package:mudra_yojana/utils/asset_res.dart';
import 'package:mudra_yojana/utils/string_res.dart';

Widget allYojnaBody() {
  return ListView(
    children: [
      cardCommon(
        StringRes.homePageMudraPmmy,
        "प्रधानमंत्री मुद्रा योजना(PMMY)",
        () => MudraYojna(),
        image: AssetRes.mudraHome,
      ),
      verticalSizeBox(10),
      cardCommon(
        "सहभागिता दर में ग्रामीण क्षेत्र अन्तर्गत जहां 57.7 प्रतिशत पुरूष भागीदारी है वही मात्र 23.3 प्रतिशत महिलाओं की श्रम बल में भागीदारी है। इसी प्रकार शहरी क्षेत्र में 55.9 प्रतिशत पुरूषों के विरूद्ध केवल 13.6 प्रतिशत महिलाओं की श्रम बल में भागीदारी रही है। इससे स्पष्ट है कि महिलाओं की श्रम में भागीदारी पुरूषों की अपेक्षा कम है जो उनकी आर्थिक स्वावलम्बन की स्थिति को प्रभावित करता है।",
        "मुख्यमंत्री लाड़ली बहना योजना",
        () => AllYojnaPage1(),
        image: AssetRes.laadliYojna,
      ),
    ],
  );
}
