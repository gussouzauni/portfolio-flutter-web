import 'dart:html' as html;

class CustomUtil {
  String htmlOpenLink(String url) {
    html.window.open(url, '_blank');
  }
}
