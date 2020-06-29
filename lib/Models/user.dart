import 'token.dart';
import 'address.dart';

class User {
  String updatedAt;
  List<Token> token;
  String profileImage;
  String notificationToken;
  String mobileNumber;
  String lastName;
  bool isMobileVerified;
  int id;
  String firstName;
  String email;
  String createdAt;
  List<Address> address;

  User(
      {this.updatedAt,
        this.token,
        this.profileImage,
        this.notificationToken,
        this.mobileNumber,
        this.lastName,
        this.isMobileVerified,
        this.id,
        this.firstName,
        this.email,
        this.createdAt,
        this.address});

  User.fromJson(Map<String, dynamic> json) {
    updatedAt = json['updated_at'];
    if (json['token'] != null) {
      token = new List<Token>();
      json['token'].forEach((v) {
        token.add(new Token.fromJson(v));
      });
    }
    profileImage = json['profile_image'];
    notificationToken = json['notification_token'];
    mobileNumber = json['mobile_number'];
    lastName = json['last_name'];
    isMobileVerified = json['isMobileVerified'];
    id = json['id'];
    firstName = json['first_name'];
    email = json['email'];
    createdAt = json['created_at'];
    if (json['address'] != null) {
      address = new List<Address>();
      json['address'].forEach((v) {
        address.add(new Address.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updated_at'] = this.updatedAt;
    if (this.token != null) {
      data['token'] = this.token.map((v) => v.toJson()).toList();
    }
    data['profile_image'] = this.profileImage;
    data['notification_token'] = this.notificationToken;
    data['mobile_number'] = this.mobileNumber;
    data['last_name'] = this.lastName;
    data['isMobileVerified'] = this.isMobileVerified;
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['email'] = this.email;
    data['created_at'] = this.createdAt;
    if (this.address != null) {
      data['address'] = this.address.map((v) => v.toJson()).toList();
    }
    return data;
  }
}