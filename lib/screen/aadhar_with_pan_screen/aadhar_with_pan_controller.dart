import 'package:get/get.dart';
import 'package:mudra_yojana/screen/aadhar_with_pan_screen/quick_links/quick_link_screen.dart';

class AadharWithPanScreenController extends GetxController {
  void nextToQuickLinkScreen() {
    Get.to(() => const QuickLinksScreen());
  }
}
