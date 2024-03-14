class PriceInfo {
  double amount;
  String currencyCode;

  PriceInfo({
    required this.amount,
    required this.currencyCode,
  });

  factory PriceInfo.fromJson(Map<String, dynamic> json) {
    return PriceInfo(
      amount: json['amount'],
      currencyCode: json['currencyCode'],
    );
  }
}