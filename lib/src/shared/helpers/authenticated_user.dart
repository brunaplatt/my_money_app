import 'package:my_money_app/src/shared/model/user_model.dart';

class AuthenticatedUser {
  static Future<UserModel> getUserData() async {
    UserModel userData = UserModel(
        fullName: "Fulano da Silva",
        email: "fulanodasilva@gmail.com",
        id: "12345@");

    return userData;
  }
}