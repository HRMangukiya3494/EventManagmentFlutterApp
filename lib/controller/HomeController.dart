import 'dart:convert';
import 'dart:developer';
import 'package:event_management/model/UpcomingEvent.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:speech_to_text/speech_to_text.dart' as stt;

class HomeController extends GetxController {
  var locationText = ''.obs;
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  var events = <UpcomingEvent>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeSpeech();
  }

  Future<void> _initializeSpeech() async {
    bool available = await _speech.initialize();
    if (!available) {
      print("Speech recognition not available.");
    }
  }

  void updateLocationText(String text) {
    locationText.value = text;
    searchEvents(text); // Search events as text changes
  }

  bool get isTyping => locationText.value.isNotEmpty;

  void startVoiceRecognition() async {
    if (!_isListening) {
      bool available = await _speech.initialize();
      if (available) {
        _isListening = true;
        _speech.listen(onResult: (result) {
          updateLocationText(result.recognizedWords);
        });
      }
    }
  }

  void stopVoiceRecognition() {
    if (_isListening) {
      _speech.stop();
      _isListening = false;
    }
  }

  void clearText() {
    locationText.value = '';
    events.clear(); // Clear events when text is cleared
  }

  Future<void> searchEvents(String searchTerm) async {
    final response = await http.get(
      Uri.parse(
          'https://customize.brainartit.com/event/api/search_event?term=$searchTerm'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['success'] == 1) {
        final List<dynamic> eventsJson = data['data'];
        events.value =
            eventsJson.map((json) => UpcomingEvent.fromJson(json)).toList();
      } else {
        events.clear();
      }
    } else {
      log(
        response.reasonPhrase.toString(),
      );
    }
  }
}
