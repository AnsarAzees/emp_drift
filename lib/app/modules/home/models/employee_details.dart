class EmployeeDetails {
  int? id;
  String? name;
  String? username;
  String? email;
  String? profileImage;
  Address? address;
  String? phone;
  String? website;

  EmployeeDetails({
    this.id,
    this.name,
    this.username,
    this.email,
    this.profileImage,
    this.address,
    this.phone,
    this.website,
  });

  EmployeeDetails.fromJson(dynamic json) {
    id = json["id"];
    name = json["name"];
    username = json["username"];
    email = json["email"];
    profileImage = json["profile_image"];
    address = json["address"] != null ? Address.fromJson(json["address"]) : null;
    phone = json["phone"];
    website = json["website"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    map["username"] = username;
    map["email"] = email;
    map["profile_image"] = profileImage;
    if (address != null) {
      map["address"] = address?.toJson();
    }
    map["phone"] = phone;
    map["website"] = website;
    return map;
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;

  Address({this.street, this.suite, this.city, this.zipcode});

  Address.fromJson(dynamic json) {
    street = json["street"];
    suite = json["suite"];
    city = json["city"];
    zipcode = json["zipcode"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["street"] = street;
    map["suite"] = suite;
    map["city"] = city;
    map["zipcode"] = zipcode;
    return map;
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  Geo.fromJson(dynamic json) {
    lat = json["lat"];
    lng = json["lng"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["lat"] = lat;
    map["lng"] = lng;
    return map;
  }
}
