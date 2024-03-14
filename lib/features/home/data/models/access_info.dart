import 'epub.dart';
import 'pdf.dart';

class AccessInfo {
  String country;
  String viewability;
  bool embeddable;
  bool publicDomain;
  String textToSpeechPermission;
  Epub epub;
  Pdf pdf;
  String webReaderLink;
  String accessViewStatus;
  bool quoteSharingAllowed;

  AccessInfo({
    required this.country,
    required this.viewability,
    required this.embeddable,
    required this.publicDomain,
    required this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    required this.webReaderLink,
    required this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic>? json) {
    return AccessInfo(
      country: json?['country'] ?? "",
      viewability: json?['viewability'] ?? "",
      embeddable: json?['embeddable'] ?? false,
      publicDomain: json?['publicDomain'] ?? false,
      textToSpeechPermission: json?['textToSpeechPermission'] ?? "",
      epub: Epub.fromJson(json?['epub'] ?? {}),
      pdf: Pdf.fromJson(json?['pdf'] ?? {}),
      webReaderLink: json?['webReaderLink'] ?? "",
      accessViewStatus: json?['accessViewStatus'] ?? "",
      quoteSharingAllowed: json?['quoteSharingAllowed'] ?? false,
    );
  }
}
