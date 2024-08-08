import 'dart:developer';
import 'package:event_management/model/UpcomingEvent.dart';
import 'package:event_management/views/utils/VarUtils.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyFavoritesController extends GetxController {
  var upcomingEvents = <UpcomingEvent>[].obs;
  var isLoading = true.obs;
  var hasError = false.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    fetchLikeEvents();
    super.onInit();
  }

  Future<void> fetchLikeEvents() async {
    try {
      isLoading(true);
      log("Fetching liked events...");

      var uri =
          Uri.parse('https://customize.brainartit.com/event/api/get_like');
      var response = await http.post(
        uri,
        body: {
          'user_id': VarUtils.userId.toString(),
        },
      );

      log("Received response with status code: ${response.statusCode}");

      if (response.statusCode == 200) {
        final responseString = response.body;
        log("Response data: $responseString");

        final Map<String, dynamic> jsonResponse = json.decode(responseString);

        if (jsonResponse.containsKey('data') &&
            jsonResponse['data'] is List<dynamic>) {
          final List<dynamic> eventsList = jsonResponse['data'];
          upcomingEvents.value =
              eventsList.map((e) => UpcomingEvent.fromJson(e)).toList();
          log("Liked events fetched successfully");
        } else {
          log("Unexpected response format: 'data' key missing or not a list");
          upcomingEvents.value = [];
          errorMessage.value =
              'Unexpected response format: "data" key missing or not a list';
        }
      } else {
        log("Failed to load events. Status code: ${response.statusCode}");
        hasError(true);
        errorMessage.value =
            'Failed to load events. Status code: ${response.statusCode}';
      }
    } catch (e) {
      log("Error occurred: $e");
      hasError(true);
      errorMessage.value = 'Error occurred: $e';
    } finally {
      isLoading(false);
    }
  }
}
