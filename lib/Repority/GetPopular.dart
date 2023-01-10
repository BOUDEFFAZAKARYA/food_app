import 'package:food_app/Repority/ApiClient.dart';
import 'package:get/get.dart';

class GetPopularRepo extends GetxService {
  final ApiClient apiClient;

  GetPopularRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData("uri end point");
  }
}
