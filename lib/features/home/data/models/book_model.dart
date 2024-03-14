import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class Volume {
  String kind, id, etag, selfLink;
  VolumeInfo volumeInfo;
  SaleInfo saleInfo;
  AccessInfo accessInfo;
  SearchInfo searchInfo;

  Volume({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  });

  factory Volume.fromJson(Map<String, dynamic>? json) {
    return Volume(
      kind: json?['kind'] ?? "",
      id: json?['id'] ?? "",
      etag: json?['etag'] ?? "",
      selfLink: json?['selfLink'] ?? "",
      volumeInfo: VolumeInfo.fromJson(json?['volumeInfo'] ?? {}),
      saleInfo: SaleInfo.fromJson(json?['saleInfo'] ?? {}),
      accessInfo: AccessInfo.fromJson(json?['accessInfo'] ?? {}),
      searchInfo: SearchInfo.fromJson(json?['searchInfo'] ?? {}),
    );
  }
}

