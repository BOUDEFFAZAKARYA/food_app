import 'package:food_app/Repority/ApiClient.dart';
import 'package:food_app/Repority/GetPopular.dart';
import 'package:get/get.dart';

import '../controlers/Popular_product_controler.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(url: "url"));

  Get.lazyPut(() => GetPopularRepo(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(getPopularRepo: Get.find()));
}
