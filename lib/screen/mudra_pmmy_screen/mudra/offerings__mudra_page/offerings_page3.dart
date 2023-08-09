import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/button_common.dart';
import 'package:mudra_yojana/common_widget/common_container.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra/offerings__mudra_page/offerings_page4.dart';
import 'package:mudra_yojana/screen/mudra_pmmy_screen/mudra_page_widget.dart';

class OfferingPage3 extends StatelessWidget {
  const OfferingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mudraPageAppBar(),
      body: offeringPage3Body(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ButtonWidget(
          text: "N E X T",
          textColor: Colors.white,
          textSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
          minHeight: Get.height * 0.065,
          onPressed: () => Get.to(
            () => const OfferingPage4(),
          ),
        ),
      ),
    );
  }
}

Widget offeringPage3Body() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
    ),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          containerCommon(
            Colors.orange,
            "• Purpose of MUDRA loan •",
          ),
          verticalSizeBox(15),
          cardAllCommon(
            "Mudra loan is extended for a variety of purposes which result in income generation and employment creation. The loans are extended mainly for:\n\nBusiness loan for Vendors, Traders, Shopkeepers and other Service Sector activities\n\nWorking capital loan through MUDRA Cards\n\nEquipment Finance for Micro Units\n\nTransport Vehicle loans - for commercial use only\n\nLoans for agri-allied non-farm income generating activities, e.g. pisciculture. bee keeping, poultry farming, etc.\n\nTractors, tillers as well as two wheelers used for commercial purposes only.\n\nFollowing is an illustrative list of the activities that can be covered under MUDRA loans: \n\n1) Transport Vehicle\n\nPurchase of transport vehicles for transportation of goods and passengers such as auto rickshaws, small goods transport vehicles, 3 wheelers, e-rickshaws, taxis, etc. Tractors/Tractor Trolleys/Power Tillers used only for commercial purposes are also eligible for assistance under PMMY. Two Wheelers used for commercial purposes are also eligible for coverage under PMMY.\n\n2) Community, Social & Personal Service Activities\n\nSalons, beauty parlours, gymnasium, boutiques, tailoring shops, dry cleaning, cycle and motorcycle repair shops, DTP and Photocopying Facilities, Medicine Shops, Courier Agents, etc.\n\n3) Food Products Sector Activities such as papad making, achaar making, jam/jelly making, agricultural produce preservation at rural level, sweet shops, small service food stalls and day to day catering / canteen services, cold chain vehicles, cold storages, ice making units, ice cream making units, biscuit, bread and bun making, etc.\n\n4) Textile Products Sector / Activity Handloom, powerloom, khadi activity, chikan work, zari and zardozi work, traditional embroidery and hand work, traditional dyeing and printing, apparel design, knitting, cotton ginning, computerized embroidery, stitching and other textile non garment products such as bags, vehicle accessories, furnishing accessories, etc.\n\n5) Business loans for Traders and ShopkeepersFinancial support for on lending to individuals for running their shops/ trading & business activities/ service enterprises and non-farm income generating activities with beneficiary loan size of up to 10 lakh per enterprise / borrower. 6) Equipment Finance Scheme for Micro Units\n\nSetting up micro enterprises by purchasing necessary machinery / equipments with per beneficiary loan size of upto 10 lakh.\n\n7) Activities allied to agriculture 'Activities allied to agriculture', e.g. pisciculture, bee keeping, poultry, livestock-rearing, grading, sorting, aggregation agro industries, diary, fishery, agri-clinics and agribusiness centres, food & agro-processing, etc. (excluding crop loans, land improvement such as canal, irrigation and wells) and services supporting these, which promote livelihood or are income generating shall be eligible for coverage under PMMY in 2016-17.",
            Colors.orange,
          ),
          verticalSizeBox(20),
        ],
      ),
    ),
  );
}
