import 'package:dio/dio.dart';
import 'package:my_money_app/src/http/app_dio.dart';

class HomeRepository {
  Future<Response<List<dynamic>>> getExpenses(String userId) async {
    String url = "http://192.168.5.133:5432/expense/findAllByUser/$userId";

    Dio clientHTTP = await AppDio.getConnection(isAuth: true);

    return await clientHTTP.get(url);
  }

  Future<Response<dynamic>> getGoal(String userId) async {
    String url = "http://192.168.5.133:5432/goal/findByUser/$userId";

    Dio clientHTTP = await AppDio.getConnection(isAuth: true);

    return await clientHTTP.get(url);
  }
}