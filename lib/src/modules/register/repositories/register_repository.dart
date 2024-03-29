import 'package:dio/dio.dart';
import 'package:my_money_app/src/http/app_dio.dart';
import 'package:my_money_app/src/modules/register/model/register_modal.dart';

class RegisterRepository {
  String baseURL = "http://192.168.31.96:3099/user";

  Future<Response<Map<String, dynamic>>> sendRegisterData(
      RegisterDataModel registerData) async {
    final Dio clientHTTP = await AppDio.getConnection(isAuth: true);

    return clientHTTP.post('$baseURL/create', data: registerData.toJson());
  }
}