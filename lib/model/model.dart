import 'dart:convert';

TestDataModel testDataModelFromJson(String str) =>
    TestDataModel.fromJson(json.decode(str));

String testDataModelToJson(TestDataModel data) => json.encode(data.toJson());

class TestDataModel {
  TestDataModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<IpDataModel>? data;
  Support? support;

  factory TestDataModel.fromJson(Map<String, dynamic> json) => TestDataModel(
        page: json['page'],
        perPage: json['per_page'],
        total: json['total'],
        totalPages: json['total_pages'],
        data: json['data'] == null
            ? null
            : List<IpDataModel>.from(json['data'].map((x) => IpDataModel.fromJson(x))),
        support:
            json['support'] == null ? null : Support.fromJson(json['support']),
      );

  Map<String, dynamic> toJson() => {
        'page': page,
        'per_page': perPage,
        'total': total,
        'total_pages': totalPages,
        'data': data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        'support': support == null ? null : support!.toJson(),
      };
}

class IpDataModel {
  IpDataModel({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  factory IpDataModel.fromJson(Map<String, dynamic> json) => IpDataModel(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'avatar': avatar,
      };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json['url'],
        text: json['text'],
      );

  Map<String, dynamic> toJson() => {
        'url': url,
        'text': text,
      };
}
