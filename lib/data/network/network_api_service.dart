import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'package:mvvm_architecture/data/app_exceptions.dart';
import 'package:mvvm_architecture/data/network/base_api_service.dart';

class NetworkApiService extends BaseApiService {
  @override
  Future getApiResponse(String url) async {
    dynamic responseJson;

    try {
      final response = await http.get(Uri.parse(url)).timeout(
            const Duration(seconds: 10),
          );

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(
        'No Internet Connection',
      );
    }
    return responseJson;
  }

  @override
  Future postApiResponse(String url, dynamic data) async {
    dynamic responseJson;

    try {
      Response response = await post(Uri.parse(url), body: data).timeout(
        const Duration(seconds: 10),
      );

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(
        'No Internet Connection',
      );
    }
    return responseJson;
  }
}

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;

    case 400:
      throw BadDataException(
        response.body.toString(),
      );

    case 404:
      throw UnauthorisedException(
        response.body.toString(),
      );

    case 500:
    default:
      throw FetchDataException(
        'an error has been encountered during communication with the server with status code ${response.statusCode}',
      );
  }
}
