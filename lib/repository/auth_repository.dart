import 'package:mvvm_architecture/data/network/base_api_service.dart';
import 'package:mvvm_architecture/data/network/network_api_service.dart';
import 'package:mvvm_architecture/res/app_url.dart';

class AuthRepository {
  BaseApiService _apiService = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiService.postApiResponse(AppUrl.loginUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
          await _apiService.postApiResponse(AppUrl.registerUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
