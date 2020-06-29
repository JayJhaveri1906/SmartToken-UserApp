import 'store.dart';
import 'user.dart';

class Token {
  String visitorName;
  String visitorMobileNumber;
  String visitorAddress;
  int userId;
  User user;
  String updatedAt;
  int tokenNumber;
  int storeId;
  Store store;
  String outTime;
  bool isWalkin;
  String inTime;
  int id;
  String createdAt;

  Token(
      {this.visitorName,
        this.visitorMobileNumber,
        this.visitorAddress,
        this.userId,
        this.user,
        this.updatedAt,
        this.tokenNumber,
        this.storeId,
        this.store,
        this.outTime,
        this.isWalkin,
        this.inTime,
        this.id,
        this.createdAt});

  Token.fromJson(Map<String, dynamic> json) {
    visitorName = json['visitor_name'];
    visitorMobileNumber = json['visitor_mobile_number'];
    visitorAddress = json['visitor_address'];
    userId = json['user_id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    updatedAt = json['updated_at'];
    tokenNumber = json['token_number'];
    storeId = json['store_id'];
    store = json['store'] != null ? new Store.fromJson(json['store']) : null;
    outTime = json['out_time'];
    isWalkin = json['is_walkin'];
    inTime = json['in_time'];
    id = json['id'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['visitor_name'] = this.visitorName;
    data['visitor_mobile_number'] = this.visitorMobileNumber;
    data['visitor_address'] = this.visitorAddress;
    data['user_id'] = this.userId;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['updated_at'] = this.updatedAt;
    data['token_number'] = this.tokenNumber;
    data['store_id'] = this.storeId;
    if (this.store != null) {
      data['store'] = this.store.toJson();
    }
    data['out_time'] = this.outTime;
    data['is_walkin'] = this.isWalkin;
    data['in_time'] = this.inTime;
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    return data;
  }
}