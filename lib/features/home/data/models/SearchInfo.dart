/// textSnippet : "This book can be used both as an introduction to the subject, suitable for a one- or two-semester graduate course, or as reference for researchers who apply techniques from logic in computer science."

class SearchInfo {
  SearchInfo({
      this.textSnippet,});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

}