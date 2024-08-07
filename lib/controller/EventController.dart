import 'dart:developer';
import 'package:event_management/model/EventModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EventController extends GetxController {
  var events = <EventModel>[].obs;
  var isLoading = true.obs;

  void fetchEventsByCategory(int categoryId) async {
    try {
      isLoading(true);
      var request = http.MultipartRequest('POST', Uri.parse('https://customize.brainartit.com/event/api/event_by_category'));
      request.fields.addAll({'category_id': categoryId.toString()});
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseData = await response.stream.bytesToString();
        final data = jsonDecode(responseData)['data'] as List;
        events.value = data.map((json) => EventModel.fromJson(json)).toList();
      } else {
        log("${response.reasonPhrase}");
      }
    } catch (e) {
      log('Error occurred: $e');
    } finally {
      isLoading(false);
    }
  }
}