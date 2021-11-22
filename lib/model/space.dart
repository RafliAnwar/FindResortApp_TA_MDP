class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space(
      {this.city,
      this.country,
      this.id,
      this.imageUrl,
      this.name,
      this.price,
      this.rating,
      this.address,
      this.phone,
      this.mapUrl,
      this.photos,
      this.numberOfKitchens,
      this.numberOfBedrooms,
      this.numberOfCupboards});

  Space.fromJson(json){
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    price = json['price'];
    imageUrl = json['image_url'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    photos = json['photos'];
    mapUrl = json['map_url'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
    numberOfKitchens = json['number_of_kitchens'];
  }
}
