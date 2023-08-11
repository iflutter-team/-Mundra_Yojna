import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudra_yojana/common_widget/common_gridview.dart';
import 'package:mudra_yojana/common_widget/margin_common.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/TDS_on_cash_Withdrawal.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/Tax_calendar.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/Tax_information_service.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/authanticate_notice_order.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/comply_to_service.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/e-pay_tax.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/e-verify_return.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/income_tax_ITR.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/income_tax_calculator.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/instant_e-pan.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/know_TAN_Details.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/know_payment_status.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/know_your_A.O.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/link_aadhar.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/link_aadhar_status.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/report_account_misuse.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/submit_tax_evasion.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/verify_service_request.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/gridView_screen/verify_your_PAN.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/quick_links_controller.dart';
import 'package:mudra_yojana/utils/asset_res.dart';
import 'package:mudra_yojana/utils/string_res.dart';

Widget tapToAadharLinkPanCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: InkWell(
      onTap: () {
        Get.to(() => const LinkAadharStatus());
      },
      child: Container(
        height: Get.height * 0.25,
        width: Get.width * 0.91,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              AssetRes.aadharToPanLinkImage,
              scale: 4,
            ),
            SizedBox(
              width: Get.width * 0.50,
              child: const Text(
                StringRes.photoSideText,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget quickLinksScreenGridview() {
  return GetBuilder<QuickLinksScreenController>(
    builder: (controller) => ListView(
      children: [
        verticalSizeBox(Get.height * 0.035),
        tapToAadharLinkPanCard(),
        verticalSizeBox(Get.height * 0.030),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    radius: 35,
                    image: "asserts/images/everifyReturn.png",
                    onTap: () {
                      Get.to(() => const EVerifyScreen());
                    }),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'e-Verify Return',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const LinkAadharStatus());
                    },
                    radius: 35,
                    image: "asserts/images/linkAadharStatus.jpg"),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Link Aadhar Status',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                  onTap: () {
                    Get.to(const LinkAadharScreen());
                  },
                  radius: 35,
                  image: "asserts/images/linkAadhar.jpg",
                ),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Link Aadhar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
        verticalSizeBox(Get.height * 0.020),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const IncomeTaxReturnITR());
                    },
                    radius: 35,
                    image: "asserts/images/incomeTaxReturn.png"),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Income Tax Return (ITR)',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const IncomeTaxCalculator());
                    },
                    radius: 35,
                    image: "asserts/images/taxCalendar.png"),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Income & Tax Calculator',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const EPayTex());
                    },
                    radius: 35,
                    image: "asserts/images/ePayTax.png"),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'e-Pay Tax',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
        verticalSizeBox(Get.height * 0.020),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const KnowPaymentStatus());
                    },
                    radius: 35,
                    image: 'asserts/images/knowPaymentStatus.png'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Know Payment Status',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const InstantEPanScreen());
                    },
                    radius: 35,
                    image: 'asserts/images/instantEPan.png'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Instant E-Pan',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const AuthenticateNoticeOrder());
                    },
                    radius: 35,
                    image: 'asserts/images/authenticate.jpg'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Authenticate Notice/Order',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
        verticalSizeBox(Get.height * 0.020),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const KnowYourAO());
                    },
                    radius: 35,
                    image: 'asserts/images/knowYourAO.jpg'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Know Your A.O',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const TdsOnCashWithdrwal());
                    },
                    radius: 35,
                    image: 'asserts/images/cashWithdrawal.png'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'TDS on Cash Withdrawal',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const VerifyServiceRequest());
                    },
                    radius: 35,
                    image: 'asserts/images/verifyServiceRequest.png'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Verify Service Request',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
        verticalSizeBox(Get.height * 0.020),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const SubmitTaxEvasion());
                    },
                    radius: 35,
                    image: 'asserts/images/taxEvasion.png'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Submit Tax Evasion petition',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const ReportAccountMisuse());
                    },
                    radius: 35,
                    image: 'asserts/images/reportAccountMisuse.jpg'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Report Account Misuse',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const VerifyYourPan());
                    },
                    radius: 35,
                    image: 'asserts/images/verifyYourPAn.png'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Verify Your PAN',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
        verticalSizeBox(Get.height * 0.020),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const KnowTANDetails());
                    },
                    radius: 35,
                    image: 'asserts/images/knowTanDetails.png'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Know TAN Details',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const TaxCalendar());
                    },
                    radius: 35,
                    image: 'asserts/images/taxCalendar.png'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Tax Calendar',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const TaxInformationService());
                    },
                    radius: 35,
                    image: 'asserts/images/informationService.jpg'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Information & Service',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
        verticalSizeBox(Get.height * 0.020),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            horizontalSizeBox(Get.width * 0.050),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                commonGridView(
                    onTap: () {
                      Get.to(() => const ComplyToNotice());
                    },
                    radius: 35,
                    image: 'asserts/images/complyToNotice.jpg'),
                const SizedBox(
                  width: 85,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Comply to Notice',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
        verticalSizeBox(20),
      ],
    ),
  );
}
