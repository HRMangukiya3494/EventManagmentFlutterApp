class EventModel {
  final int id;
  final String name;
  final String? place;
  final int categoryId;
  final String image;
  final int approve;

  EventModel({
    required this.id,
    required this.name,
    this.place,
    required this.categoryId,
    required this.image,
    required this.approve,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      name: json['name'],
      place: json['place'],
      categoryId: json['category_id'],
      image: json['image'],
      approve: json['approve'],
    );
  }
}