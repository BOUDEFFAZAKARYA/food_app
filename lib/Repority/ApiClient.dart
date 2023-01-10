import 'dart:convert';

import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  final String url;

  late String token;

  late Map<String, String> _mainheaders;

  ApiClient({
    required this.url,
  }) {
    baseUrl = url;
    timeout = Duration(seconds: 30);

    _mainheaders = {
      'content-type': 'application/json; charset=UTF-8',
      'Authorisation': 'Bearer $token',
    };
  }

  Future<Response> getData(
    String uri,
  ) async {
    try {
      Response response = await get(uri);

      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
