import 'package:url_launcher/url_launcher.dart';

class UpiService {
  static Future<void> pay(String upiUrl) async {
    final uri = Uri.parse(upiUrl);

    try {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      throw "No UPI app found";
    }
  }
}
