class Member{
  String name, imageUrl;

  Member(this.name, this.imageUrl);

  Member.fromJson(Map<dynamic, dynamic> json)
      : name = json['name'],
        imageUrl = json['imageUrl'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'imageUrl': imageUrl,
  };
}