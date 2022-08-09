class CoWorkModel {
  CoWorkModel({
      this.id, 
      this.name, 
      this.address, 
      this.phone, 
      this.indvRooms, 
      this.timing, 
      this.sharedRooms, 
      this.wifi, 
      this.cafe, 
      this.meetingsRoom, 
      this.meetingsRooms, 
      this.trainingRoom, 
      this.trainingRooms, 
      this.library, 
      this.events, 
      this.studio, 
      this.images, 
      this.rating,});

  CoWorkModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    indvRooms = json['indv_rooms'];
    if (json['timing'] != null) {
      timing = [];
      json['timing'].forEach((v) {
        timing?.add(Timing.fromJson(v));
      });
    }
    sharedRooms = json['shared_rooms'];
    wifi = json['wifi'];
    cafe = json['cafe'];
    meetingsRoom = json['meetings_room'];
    meetingsRooms = json['meetings_rooms'];
    trainingRoom = json['training_room'];
    trainingRooms = json['training_rooms'];
    library = json['library'];
    events = json['events'];
    studio = json['studio'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    rating = json['evaluation'];
  }
  num? id;
  String? name;
  String? address;
  String? phone;
  num? indvRooms;
  List<Timing>? timing;
  num? sharedRooms;
  bool? wifi;
  bool? cafe;
  bool? meetingsRoom;
  num? meetingsRooms;
  bool? trainingRoom;
  num? trainingRooms;
  bool? library;
  bool? events;
  bool? studio;
  List<Images>? images;
  double? rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['address'] = address;
    map['phone'] = phone;
    map['indv_rooms'] = indvRooms;
    if (timing != null) {
      map['timing'] = timing?.map((v) => v.toJson()).toList();
    }
    map['shared_rooms'] = sharedRooms;
    map['wifi'] = wifi;
    map['cafe'] = cafe;
    map['meetings_room'] = meetingsRoom;
    map['meetings_rooms'] = meetingsRooms;
    map['training_room'] = trainingRoom;
    map['training_rooms'] = trainingRooms;
    map['library'] = library;
    map['events'] = events;
    map['studio'] = studio;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['evaluation'] = rating;
    return map;
  }

}

class Images {
  Images({
      this.imageUrl, 
      this.caption,});

  Images.fromJson(dynamic json) {
    imageUrl = json['image_url'];
    caption = json['caption'];
  }
  String? imageUrl;
  String? caption;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image_url'] = imageUrl;
    map['caption'] = caption;
    return map;
  }

}

class Timing {
  Timing({
      this.vacation, 
      this.day, 
      this.start, 
      this.end,});

  Timing.fromJson(dynamic json) {
    vacation = json['vacation'];
    day = json['day'];
    start = json['start'];
    end = json['end'];
  }
  bool? vacation;
  String? day;
  String? start;
  String? end;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['vacation'] = vacation;
    map['day'] = day;
    map['start'] = start;
    map['end'] = end;
    return map;
  }

}