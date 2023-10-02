import 'package:chat_app_waleed/models/my_user.dart';

class SignupResponse {
  final MyUser? user;
  final String? error;

  bool get success => user != null && error == null;

  SignupResponse({this.user, this.error});
}
