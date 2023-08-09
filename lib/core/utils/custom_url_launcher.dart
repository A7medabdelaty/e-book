import 'package:url_launcher/url_launcher.dart';

customUrlLauncher({required String url}) async {
  Uri _url = Uri.parse(url);
  if (await canLaunchUrl(_url)) {
    launchUrl(_url);
  }
}
