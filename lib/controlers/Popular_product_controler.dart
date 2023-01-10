import 'package:food_app/Repority/GetPopular.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final GetPopularRepo getPopularRepo;

  PopularProductController({required this.getPopularRepo});

  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  Future<void> GetPopularProductList() async {
    Response responce = await getPopularRepo.getPopularProductList();

    if (responce.statusCode == 200) {
      _popularProductList = [];
      //_popularProductList.addAll();
      update();
    } else {}
  }
}
