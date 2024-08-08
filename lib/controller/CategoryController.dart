import 'dart:developer';
import 'package:event_management/model/CategoryModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // For JSON decoding

class CategoryController extends GetxController {
  var categories = <CategoryModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('https://customize.brainartit.com/event/api/get_category'));

      // log('Response status: ${response.statusCode}');
      // log('Response body: ${response.body}'); // Log response body

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)['data'] as List;
        categories.value = data.map((json) => CategoryModel.fromJson(json)).toList();
      } else {
        log('Failed to load categories: ${response.reasonPhrase}');
      }
    } catch (e) {
      log('Error occurred: $e');
    } finally {
      isLoading(false);
    }
  }
}
