class Address {
  int userId;
  String state;
  int pincode;
  int id;
  String country;
  String city;
  String addressLine2;
  String addressLine1;

  Address(
      {this.userId,
        this.state,
        this.pincode,
        this.id,
        this.country,
        this.city,
        this.addressLine2,
        this.addressLine1});

  Address.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    state = json['state'];
    pincode = json['pincode'];
    id = json['id'];
    country = json['country'];
    city = json['city'];
    addressLine2 = json['address_line_2'];
    addressLine1 = json['address_line_1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['state'] = this.state;
    data['pincode'] = this.pincode;
    data['id'] = this.id;
    data['country'] = this.country;
    data['city'] = this.city;
    data['address_line_2'] = this.addressLine2;
    data['address_line_1'] = this.addressLine1;
    return data;
  }
}