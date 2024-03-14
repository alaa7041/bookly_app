import 'offer.dart';
import 'price_info.dart';

class SaleInfo {
  String country;
  String saleability;
  bool isEbook;
  PriceInfo listPrice;
  PriceInfo retailPrice;
  String buyLink;
  List<Offer> offers;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    required this.listPrice,
    required this.retailPrice,
    required this.buyLink,
    required this.offers,
  });

  factory SaleInfo.fromJson(Map<String, dynamic>? json) {
    return SaleInfo(
      country: json?['country'] ?? "",
      saleability: json?['saleability'] ?? "",
      isEbook: json?['isEbook'] ?? false,
      listPrice: PriceInfo.fromJson(json?['listPrice'] ?? {}),
      retailPrice: PriceInfo.fromJson(json?['retailPrice'] ?? {}),
      buyLink: json?['buyLink'] ?? "",
      offers: List<Offer>.from((json?['offers'] as List<dynamic>? ?? []).map((x) => Offer.fromJson(x))),
    );
  }
}
