import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class GridViewController extends GetxController {
  final Uri eVerifyReturnScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/eVerifyReturn-bl');

  Future<void> eVerifyReturn() async {
    if (!await launchUrl(eVerifyReturnScreenUrl)) {
      throw Exception('Could not launch $eVerifyReturnScreenUrl');
    }
    update(['E-VerifyReturn']);
  }

  final Uri linkAadharStatusScreenUrl = Uri.parse(
      'https://www.incometax.gov.in/iec/foportal/help/how-to-link-aadhaar');

  Future<void> linkAadharStatus() async {
    if (!await launchUrl(linkAadharStatusScreenUrl)) {
      throw Exception('Could not launch $linkAadharStatusScreenUrl');
    }
    update(['LinkAadharStatus']);
  }

  final Uri linkAadharScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/bl-link-aadhaar');

  Future<void> linkAadhar() async {
    if (!await launchUrl(linkAadharScreenUrl)) {
      throw Exception('Could not launch $linkAadharScreenUrl');
    }
    update(['LinkAadhar']);
  }

  final Uri incomeTaxReturnITRScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/itrStatus');

  Future<void> incomeTaxReturnITR() async {
    if (!await launchUrl(incomeTaxReturnITRScreenUrl)) {
      throw Exception('Could not launch $incomeTaxReturnITRScreenUrl');
    }
    update(['ITR']);
  }

  final Uri incomeTaxCalculatorScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/TaxCalc/calculator');

  Future<void> incomeTaxCalculator() async {
    if (!await launchUrl(incomeTaxCalculatorScreenUrl)) {
      throw Exception('Could not launch $incomeTaxCalculatorScreenUrl');
    }
    update(['Calculator']);
  }

  final Uri ePayTaxScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/e-pay-tax-prelogin/user-details');

  Future<void> ePayTax() async {
    if (!await launchUrl(ePayTaxScreenUrl)) {
      throw Exception('Could not launch $ePayTaxScreenUrl');
    }
    update(['ePayTax']);
  }

  final Uri knowPaymentStatusScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/e-pay-tax-prelogin/user-details');

  Future<void> knowPaymentStatus() async {
    if (!await launchUrl(knowPaymentStatusScreenUrl)) {
      throw Exception('Could not launch $knowPaymentStatusScreenUrl');
    }
    update(['KnowPaymentStatus']);
  }

  final Uri instantEPanScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/instant-e-pan');

  Future<void> instantEPan() async {
    if (!await launchUrl(instantEPanScreenUrl)) {
      throw Exception('Could not launch $instantEPanScreenUrl');
    }
    update(['E-Pan']);
  }

  final Uri authenticateNoticeOrderScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/authenticate-notice-issued-by-itd');

  Future<void> authenticateNoticeOrder() async {
    if (!await launchUrl(authenticateNoticeOrderScreenUrl)) {
      throw Exception('Could not launch $authenticateNoticeOrderScreenUrl');
    }
    update(['Authenticate-Notice/Order']);
  }

  final Uri knowYourAOScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/knowYourAO');

  Future<void> knowYourAO() async {
    if (!await launchUrl(knowYourAOScreenUrl)) {
      throw Exception('Could not launch $knowYourAOScreenUrl');
    }
    update(['KnowYourAO']);
  }

  final Uri tdsOnCashWithdrawScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/tds');

  Future<void> tdsOnCashWithdraw() async {
    if (!await launchUrl(tdsOnCashWithdrawScreenUrl)) {
      throw Exception('Could not launch $tdsOnCashWithdrawScreenUrl');
    }
    update(['TdsOnCashWithdraw']);
  }

  final Uri verifyServiceRequestScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/verifyServiceRequest');

  Future<void> verifyServiceRequest() async {
    if (!await launchUrl(verifyServiceRequestScreenUrl)) {
      throw Exception('Could not launch $verifyServiceRequestScreenUrl');
    }
    update(['VerifyServiceRequest']);
  }

  final Uri submitTaxEvasionScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/tax-evasion-prelogin');

  Future<void> submitTaxEvasion() async {
    if (!await launchUrl(submitTaxEvasionScreenUrl)) {
      throw Exception('Could not launch $submitTaxEvasionScreenUrl');
    }
    update(['SubmitTaxEvasion']);
  }

  final Uri reportAccountMisuseScreenUrl =
      Uri.parse('https://www.incometax.gov.in/iec/foportal/account-misuse');

  Future<void> reportAccountMisuse() async {
    if (!await launchUrl(reportAccountMisuseScreenUrl)) {
      throw Exception('Could not launch $reportAccountMisuseScreenUrl');
    }
    update(['ReportAccountMisuse']);
  }

  final Uri verifyYourPanScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/verifyYourPAN');

  Future<void> verifyYourPan() async {
    if (!await launchUrl(verifyYourPanScreenUrl)) {
      throw Exception('Could not launch $verifyYourPanScreenUrl');
    }
    update(['VerifyYourPan']);
  }

  final Uri knowTanDetailsScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/knowYourTAN');

  Future<void> knowTanDetails() async {
    if (!await launchUrl(knowTanDetailsScreenUrl)) {
      throw Exception('Could not launch $knowTanDetailsScreenUrl');
    }
    update(['KnowTanDetails']);
  }

  final Uri taxCalendarScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/TaxCalc/calculator');

  Future<void> taxCalendar() async {
    if (!await launchUrl(taxCalendarScreenUrl)) {
      throw Exception('Could not launch $taxCalendarScreenUrl');
    }
    update(['TaxCalendar']);
  }

  final Uri taxInformationAndServiceScreenUrl = Uri.parse(
      'https://incometaxindia.gov.in/pages/tax-information-services.aspx');

  Future<void> taxInformationService() async {
    if (!await launchUrl(taxInformationAndServiceScreenUrl)) {
      throw Exception('Could not launch $taxInformationAndServiceScreenUrl');
    }
    update(['TaxInformationService']);
  }

  final Uri complyToNoticeScreenUrl = Uri.parse(
      'https://eportal.incometax.gov.in/iec/foservices/#/pre-login/comply_to_notice');

  Future<void> complyToNotice() async {
    if (!await launchUrl(complyToNoticeScreenUrl)) {
      throw Exception('Could not launch $complyToNoticeScreenUrl');
    }
    update(['ComplyToNotice']);
  }
}
