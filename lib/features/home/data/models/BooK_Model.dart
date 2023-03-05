import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

/// kind : "books#volume"
/// id : "5Jaa1BVverIC"
/// etag : "+lri3ffk/RE"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/5Jaa1BVverIC"
/// volumeInfo : {"title":"Concise Encyclopedia of Computer Science","authors":["Edwin D. Reilly"],"publisher":"John Wiley & Sons","publishedDate":"2004-09-03","description":"The Concise Encyclopedia of Computer Science has been adapted from the full Fourth Edition to meet the needs of students, teachers and professional computer users in science and industry. As an ideal desktop reference, it contains shorter versions of 60% of the articles found in the Fourth Edition, putting computer knowledge at your fingertips. Organised to work for you, it has several features that make it an invaluable and accessible reference. These include: Cross references to closely related articles to ensure that you don’t miss relevant information Appendices covering abbreviations and acronyms, notation and units, and a timeline of significant milestones in computing have been included to ensure that you get the most from the book. A comprehensive index containing article titles, names of persons cited, references to sub-categories and important words in general usage, guarantees that you can easily find the information you need. Classification of articles around the following nine main themes allows you to follow a self study regime in a particular area: Hardware Computer Systems Information and Data Software Mathematics of Computing Theory of Computation Methodologies Applications Computing Milieux. Presenting a wide ranging perspective on the key concepts and developments that define the discipline, the Concise Encyclopedia of Computer Science is a valuable reference for all computer users.","industryIdentifiers":[{"type":"ISBN_10","identifier":"0470090952"},{"type":"ISBN_13","identifier":"9780470090954"}],"readingModes":{"text":false,"image":true},"pageCount":908,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.2.4.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=5Jaa1BVverIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=5Jaa1BVverIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=5Jaa1BVverIC&printsec=frontcover&dq=computer+science&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=5Jaa1BVverIC&dq=computer+science&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Concise_Encyclopedia_of_Computer_Science.html?hl=&id=5Jaa1BVverIC"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Concise_Encyclopedia_of_Computer_Science-sample-pdf.acsm?id=5Jaa1BVverIC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=5Jaa1BVverIC&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"The Concise Encyclopedia of Computer Science has been adapted from the full Fourth Edition to meet the needs of students, teachers and professional computer users in science and industry."}

class BooKModel {
  BooKModel({
      String? kind, 
      String? id, 
      String? etag, 
      String? selfLink, 
      required VolumeInfo volumeInfo,
      SaleInfo? saleInfo, 
      AccessInfo? accessInfo, 
      SearchInfo? searchInfo,}){
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
}

  BooKModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo =  VolumeInfo.fromJson(json['volumeInfo']);
    _saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    _searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;

  String? get kind => _kind;
  String? get id => _id;
  String? get etag => _etag;
  String? get selfLink => _selfLink;
  VolumeInfo? get volumeInfo => _volumeInfo;
  SaleInfo? get saleInfo => _saleInfo;
  AccessInfo? get accessInfo => _accessInfo;
  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo?.toJson();
    }
    return map;
  }

}

/// textSnippet : "The Concise Encyclopedia of Computer Science has been adapted from the full Fourth Edition to meet the needs of students, teachers and professional computer users in science and industry."



/// country : "EG"
/// viewability : "PARTIAL"
/// embeddable : true
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED"
/// epub : {"isAvailable":false}
/// pdf : {"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Concise_Encyclopedia_of_Computer_Science-sample-pdf.acsm?id=5Jaa1BVverIC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"}
/// webReaderLink : "http://play.google.com/books/reader?id=5Jaa1BVverIC&hl=&source=gbs_api"
/// accessViewStatus : "SAMPLE"
/// quoteSharingAllowed : false



/// isAvailable : true
/// acsTokenLink : "http://books.google.com.eg/books/download/Concise_Encyclopedia_of_Computer_Science-sample-pdf.acsm?id=5Jaa1BVverIC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"





/// country : "EG"
/// saleability : "NOT_FOR_SALE"
/// isEbook : false



/// title : "Concise Encyclopedia of Computer Science"
/// authors : ["Edwin D. Reilly"]
/// publisher : "John Wiley & Sons"
/// publishedDate : "2004-09-03"
/// description : "The Concise Encyclopedia of Computer Science has been adapted from the full Fourth Edition to meet the needs of students, teachers and professional computer users in science and industry. As an ideal desktop reference, it contains shorter versions of 60% of the articles found in the Fourth Edition, putting computer knowledge at your fingertips. Organised to work for you, it has several features that make it an invaluable and accessible reference. These include: Cross references to closely related articles to ensure that you don’t miss relevant information Appendices covering abbreviations and acronyms, notation and units, and a timeline of significant milestones in computing have been included to ensure that you get the most from the book. A comprehensive index containing article titles, names of persons cited, references to sub-categories and important words in general usage, guarantees that you can easily find the information you need. Classification of articles around the following nine main themes allows you to follow a self study regime in a particular area: Hardware Computer Systems Information and Data Software Mathematics of Computing Theory of Computation Methodologies Applications Computing Milieux. Presenting a wide ranging perspective on the key concepts and developments that define the discipline, the Concise Encyclopedia of Computer Science is a valuable reference for all computer users."
/// industryIdentifiers : [{"type":"ISBN_10","identifier":"0470090952"},{"type":"ISBN_13","identifier":"9780470090954"}]
/// readingModes : {"text":false,"image":true}
/// pageCount : 908
/// printType : "BOOK"
/// categories : ["Computers"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.2.4.0.preview.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=5Jaa1BVverIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=5Jaa1BVverIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=5Jaa1BVverIC&printsec=frontcover&dq=computer+science&hl=&cd=1&source=gbs_api"
/// infoLink : "http://books.google.com.eg/books?id=5Jaa1BVverIC&dq=computer+science&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Concise_Encyclopedia_of_Computer_Science.html?hl=&id=5Jaa1BVverIC"







