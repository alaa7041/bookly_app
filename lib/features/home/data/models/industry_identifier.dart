class IndustryIdentifier {
  String type;
  String identifier;

  IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  factory IndustryIdentifier.fromJson(Map<String, dynamic>? json) {
    return IndustryIdentifier(
      type: json?['type'] ?? "",
      identifier: json?['identifier'] ?? "",
    );
  }
}
