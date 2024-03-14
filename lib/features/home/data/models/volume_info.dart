import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo {
  List<String> authors, categories;
  String title,
      publisher,
      publishedDate,
      description,
      printType,
      maturityRating,
      language,
      previewLink,
      infoLink,
      canonicalVolumeLink,
      contentVersion;
  List<IndustryIdentifier> industryIdentifiers;
  ReadingModes readingModes;
  int pageCount;
  bool allowAnonLogging;
  PanelizationSummary panelizationSummary;
  ImageLinks imageLinks;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic>? json) {
    return VolumeInfo(
      title: json?['title'] ?? "",
      authors: List<String>.from(json?['authors'] ?? []),
      publisher: json?['publisher'] ?? "",
      publishedDate: json?['publishedDate'] ?? "",
      description: json?['description'] ?? "",
      industryIdentifiers: List<IndustryIdentifier>.from(
          (json?['industryIdentifiers'] as List<dynamic>? ?? [])
              .map((x) => IndustryIdentifier.fromJson(x))),
      readingModes: ReadingModes.fromJson(json?['readingModes'] ?? {}),
      pageCount: json?['pageCount'] ?? 0,
      printType: json?['printType'] ?? "",
      categories: List<String>.from(json?['categories'] ?? []),
      maturityRating: json?['maturityRating'] ?? "",
      allowAnonLogging: json?['allowAnonLogging'] ?? false,
      contentVersion: json?['contentVersion'] ?? "",
      panelizationSummary: PanelizationSummary.fromJson(json?['panelizationSummary'] ?? {}),
      imageLinks: ImageLinks.fromJson(json?['imageLinks'] ?? {}),
      language: json?['language'] ?? "",
      previewLink: json?['previewLink'] ?? "",
      infoLink: json?['infoLink'] ?? "",
      canonicalVolumeLink: json?['canonicalVolumeLink'] ?? "",
    );
  }
}

