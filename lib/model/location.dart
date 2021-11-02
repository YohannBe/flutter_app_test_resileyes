class Location{
  String name, address;

  Location(this.name, this.address);

  Location.fromJson(Map<dynamic, dynamic> json)
      : name = json['name'],
        address = json['address'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'address': address,
  };
}