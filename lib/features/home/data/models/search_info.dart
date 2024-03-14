
class SearchInfo {
  String textSnippet;

  SearchInfo({
    required this.textSnippet,
  });

  factory SearchInfo.fromJson(Map<String, dynamic>? json) {
    return SearchInfo(
      textSnippet: json?['textSnippet'] ?? "",
    );
  }
}
