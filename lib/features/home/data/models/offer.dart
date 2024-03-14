import 'price_info.dart';

class Offer {
  int finskyOfferType;
  PriceInfo listPrice;
  PriceInfo retailPrice;
  bool giftable;

  Offer({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
    required this.giftable,
  });

  factory Offer.fromJson(Map<String, dynamic>? json) {
    return Offer(
      finskyOfferType: json?['finskyOfferType'] ?? 0,
      listPrice: PriceInfo.fromJson(json?['listPrice'] ?? {}),
      retailPrice: PriceInfo.fromJson(json?['retailPrice'] ?? {}),
      giftable: json?['giftable'] ?? false,
    );
  }
}
