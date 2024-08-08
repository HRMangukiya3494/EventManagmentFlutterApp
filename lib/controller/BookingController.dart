import 'dart:convert';
import 'package:event_management/model/UpcomingEvent.dart';
import 'package:event_management/views/utils/VarUtils.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BookingController extends GetxController {
  var upcomingEvents = <UpcomingEvent>[].obs;
  var pastEvents = <UpcomingEvent>[].obs;
  var selectedIndex = 0.obs;
  var isLoading = true.obs;
  var hasError = false.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    fetchUpcomingEvents();
    super.onInit();
  }

  void selectIndex(int index) {
    selectedIndex.value = index;
    if (index == 0) {
      fetchUpcomingEvents();
    } else {
      fetchPastEvents();
    }
  }

  Future<void> fetchUpcomingEvents() async {
    try {
      isLoading(true);
      hasError(false);

      final userId = VarUtils.userId.toString();
      final url = 'https://customize.brainartit.com/event/api/upcomming';

      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.fields.addAll({'user_id': userId});

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseString = await response.stream.bytesToString();
        final Map<String, dynamic> jsonResponse = json.decode(responseString);

        if (jsonResponse['success'] == 1) {
          final List<dynamic> eventsList = jsonResponse['data'];
          upcomingEvents.value = eventsList
              .map((e) => UpcomingEvent.fromJson(e))
              .toList();
        } else {
          hasError(true);
          errorMessage.value = jsonResponse['message'];
        }
      } else {
        hasError(true);
        errorMessage.value = 'Failed to load upcoming events. Status code: ${response.statusCode}';
      }
    } catch (e) {
      hasError(true);
      errorMessage.value = 'Error occurred: $e';
    } finally {
      isLoading(false);
    }
  }

  Future<void> fetchPastEvents() async {
    try {
      isLoading(true);
      hasError(false);

      final userId = VarUtils.userId.toString();
      final url = 'https://customize.brainartit.com/event/api/past_event';

      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.fields.addAll({'user_id': userId});

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final responseString = await response.stream.bytesToString();
        final Map<String, dynamic> jsonResponse = json.decode(responseString);

        if (jsonResponse['success'] == 1) {
          final List<dynamic> eventsList = jsonResponse['data'];
          pastEvents.value = eventsList
              .map((e) => UpcomingEvent.fromJson(e))
              .toList();
        } else {
          hasError(true);
          errorMessage.value = jsonResponse['message'];
        }
      } else {
        hasError(true);
        errorMessage.value = 'Failed to load past events. Status code: ${response.statusCode}';
      }
    } catch (e) {
      hasError(true);
      errorMessage.value = 'Error occurred: $e';
    } finally {
      isLoading(false);
    }
  }
}
