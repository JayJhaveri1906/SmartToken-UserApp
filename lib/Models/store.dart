import 'token.dart';

class Store {
  String addressLine1;
  String addressLine2;
  String city;
  String contactPersonName;
  String country;
  String createdAt;
  int dailyTokenLimit;
  int id;
  bool isDeleted;
  bool isVerified;
  String mobileNumber;
  String name;
  int pincode;
  String state;
  List<Token> tokens;

  Store(
      {this.addressLine1,
        this.addressLine2,
        this.city,
        this.contactPersonName,
        this.country,
        this.createdAt,
        this.dailyTokenLimit,
        this.id,
        this.isDeleted,
        this.isVerified,
        this.mobileNumber,
        this.name,
        this.pincode,
        this.state,
        this.tokens});

  Store.fromJson(Map<String, dynamic> json) {
    addressLine1 = json['address_line_1'];
    addressLine2 = json['address_line_2'];
    city = json['city'];
    contactPersonName = json['contact_person_name'];
    country = json['country'];
    createdAt = json['created_at'];
    dailyTokenLimit = json['daily_token_limit'];
    id = json['id'];
    isDeleted = json['isDeleted'];
    isVerified = json['isVerified'];
    mobileNumber = json['mobile_number'];
    name = json['name'];
    pincode = json['pincode'];
    state = json['state'];
    if (json['tokens'] != null) {
      tokens = new List<Token>();
      json['tokens'].forEach((v) {
        tokens.add(new Token.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address_line_1'] = this.addressLine1;
    data['address_line_2'] = this.addressLine2;
    data['city'] = this.city;
    data['contact_person_name'] = this.contactPersonName;
    data['country'] = this.country;
    data['created_at'] = this.createdAt;
    data['daily_token_limit'] = this.dailyTokenLimit;
    data['id'] = this.id;
    data['isDeleted'] = this.isDeleted;
    data['isVerified'] = this.isVerified;
    data['mobile_number'] = this.mobileNumber;
    data['name'] = this.name;
    data['pincode'] = this.pincode;
    data['state'] = this.state;
    if (this.tokens != null) {
      data['tokens'] = this.tokens.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
