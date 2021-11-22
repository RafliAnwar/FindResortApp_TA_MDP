class Site {
  int id;
  String name;
  String location;
  String nameCountry;
  int rating;
  int temp;
  String duration;
  String imageUrl;
  String desc;
  String mapUrl;

  Site(
      {this.id,
      this.name,
      this.location,
      this.nameCountry,
      this.rating,
      this.temp,
      this.duration,
      this.imageUrl,
      this.desc,
      this.mapUrl});

  Site.fromJson(json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    nameCountry = json['name_country'];
    rating = json['rating'];
    temp = json['temp'];
    duration = json['duration'];
    imageUrl = json['image_url'];
    desc = json['desc'];
    mapUrl = json['map_url'];
  }
}
