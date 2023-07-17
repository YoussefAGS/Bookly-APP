import 'package:bookly_app/features/home/domain/entites/book_entity.dart';

import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "zsJlEK4nK7sC"
/// etag : "nmO3olHf9ZE"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/zsJlEK4nK7sC"
/// volumeInfo : {"title":"Elements of Finite Model Theory","authors":["Leonid Libkin"],"publisher":"Springer Science & Business Media","publishedDate":"2004-07-02","description":"Emphasizes the computer science aspects of the subject. Details applications in databases, complexity theory, and formal languages, as well as other branches of computer science.","industryIdentifiers":[{"type":"ISBN_10","identifier":"3540212027"},{"type":"ISBN_13","identifier":"9783540212027"}],"readingModes":{"text":false,"image":true},"pageCount":340,"printType":"BOOK","categories":["Mathematics"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.2.3.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=zsJlEK4nK7sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=zsJlEK4nK7sC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=zsJlEK4nK7sC&printsec=frontcover&dq=computer+science&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=zsJlEK4nK7sC&dq=computer+science&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Elements_of_Finite_Model_Theory.html?hl=&id=zsJlEK4nK7sC"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Elements_of_Finite_Model_Theory-sample-pdf.acsm?id=zsJlEK4nK7sC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=zsJlEK4nK7sC&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"This book can be used both as an introduction to the subject, suitable for a one- or two-semester graduate course, or as reference for researchers who apply techniques from logic in computer science."}

class BookModel extends BookEntity {
  BookModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  }) : super(
          bookId: id!,
          image: volumeInfo?.imageLinks?.thumbnail ??
              'assets/images/Book 1 High.png',
          authorName: volumeInfo?.authors?.first ??'No Name',
          price: 0.0,
          rating: 4.5,
          title: volumeInfo!.title!,
        );



  // factory BookModel.fromJson(Map<String, dynamic> json)=>BookModel(
  // kind: json['kind'] as String? ,
  // id: json['id'] as String? ,
  // etag: json['etag'] as String? ,
  // selfLink: json[ 'selfLink'] as String? ,
  // volumeInfo: json[ 'volumelnfo']== null ? null
  // : VolumeInfo.fromJson(json[ 'volumelnfo'] as Map<String, dynamic>),
  //
  // saleInfo: json[ ' salelnfo']==null ? null
  // :SaleInfo.fromJson(json[ 'salelnfo'] as Map<String, dynamic>),
  // accessInfo : json['accessInfo'] == null ? null
  // : AccessInfo.fromJson(json['accessInfo']as Map<String, dynamic>),
  //     searchInfo : json['searchInfo'] != null
  //         ? SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>)
  //         : null
  // );

  BookModel.fromJson(dynamic json)
      : super(
    bookId: json['id'],
    image: json['volumeInfo']['imageLinks']['thumbnail'] ??
        'assets/images/Book 1 High.png',
    authorName: json['volumeInfo']['authors']?.first,
    price: 0.0,
    rating: 4.5,
    title: json['volumeInfo']['title'],
  ) {
    kind = json['kind'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo =
    json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }

  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }
}
