class Pdf {
  bool isAvailable;

  Pdf({
    required this.isAvailable,
  });

  factory Pdf.fromJson(Map<String, dynamic>? json) {
    return Pdf(
      isAvailable: json?['isAvailable'] ?? false,
    );
  }
}
