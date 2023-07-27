class PlanetInfo {
  int id;
  String name;
  String iconImage;
  String description;
  List<String> images;
  double height;
  double width;

  PlanetInfo({
    required this.id,
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
    required this.height,
    required this.width,
  });

  factory PlanetInfo.fromJson(Map<String, dynamic> json) {
    return PlanetInfo(
      id: json['id'],
      name: json['name'],
      iconImage: json['iconImage'],
      description: json['description'],
      images: List<String>.from(json['images']),
      height: json['height'],
      width: json['width'],
    );
  }
}
