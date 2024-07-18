

import '../api_service/product_service.dart';

class AppRepository {
  static Future<List?> getProductsByCategoryFromApi(String category) async =>
      await getProductsByCategory(category);
}
