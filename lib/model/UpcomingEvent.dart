import 'package:event_management/views/utils/ImageUtils.dart';

class UpcomingEvent {
  final int id;
  final String image;
  final String name;
  final String day;
  final String dateTime;
  final String location;

  UpcomingEvent({
    required this.id,
    required this.image,
    required this.name,
    required this.dateTime,
    required this.day,
    required this.location,
  });

  factory UpcomingEvent.fromJson(Map<String, dynamic> json) {
    final baseUrl = 'https://customize.brainartit.com/event/public/upload/event/';

    return UpcomingEvent(
      id: json['id'] ?? 0,
      image: json['image'] != null
          ? '$baseUrl${json['image']}'
          : '${ImageUtils.ImagePath}${ImageUtils.SignInPageBG}',
      name: json['name'] ?? "Event",
      dateTime: json['time'] ?? "00:00 PM",
      day: json['date'] ?? "01/01/2024",
      location: json['place'] ?? "India",
    );
  }

}
